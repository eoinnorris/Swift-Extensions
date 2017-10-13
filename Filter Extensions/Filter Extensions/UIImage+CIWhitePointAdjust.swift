import Foundation

extension UIImage{ 
/// White Point Adjust
///
/// - Parameters
///   - Parameter inputColor: A color to use as the white point.
/// -  Returns: The filtered image or nil
	func whitePointAdjust(inputColor:CIColor)->UIImage?{ 
		if let filter = CIFilter.whitePointAdjust(inputColor:inputColor){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}