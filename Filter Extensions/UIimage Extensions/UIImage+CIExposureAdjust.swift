import Foundation

extension UIImage{ 
/// Exposure Adjust
///
/// - Parameters
///   - Parameter inputEV: The amount to adjust the exposure of the image by. The larger the value, the brighter the exposure.
/// -  Returns: The filtered image or nil
	func exposureAdjust(inputEV:Double = 0)->UIImage?{ 
		if let filter = CIFilter.exposureAdjust(inputEV:inputEV){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}