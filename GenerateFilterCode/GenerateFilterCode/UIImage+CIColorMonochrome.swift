import Foundation

extension UIImage{ 
/// Color Monochrome
///
/// - Parameters
///   - Parameter inputColor: The monochrome color to apply to the image.
///   - Parameter inputIntensity: The intensity of the monochrome effect. A value of 1.0 creates a monochrome image using the supplied color. A value of 0.0 has no effect on the image.
/// -  Returns: The filtered image or nil
	func colorMonochrome(inputColor:CIColor,inputIntensity:Double = 1)->UIImage?{ 
		if let filter = CIFilter.colorMonochrome(inputColor:inputColor,inputIntensity:inputIntensity){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}