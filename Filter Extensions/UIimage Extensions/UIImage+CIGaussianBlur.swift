import Foundation

extension UIImage{ 
/// Gaussian Blur
///
/// - Parameters
///   - Parameter inputRadius: The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.
/// -  Returns: The filtered image or nil
	func gaussianBlur(inputRadius:Double = 10)->UIImage?{ 
		if let filter = CIFilter.gaussianBlur(inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}