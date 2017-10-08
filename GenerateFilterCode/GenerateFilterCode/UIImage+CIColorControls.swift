import Foundation

extension UIImage{ 
/// Color Controls
///
/// - Parameters
///   - Parameter inputContrast: The amount of contrast to apply. The larger the value, the more contrast in the resulting image.
///   - Parameter inputSaturation: The amount of saturation to apply. The larger the value, the more saturated the result.
///   - Parameter inputBrightness: The amount of brightness to apply. The larger the value, the brighter the result.
/// -  Returns: The filtered image or nil
	func colorControls(inputContrast:Double = 1,inputSaturation:Double = 1,inputBrightness:Double = 0)->UIImage?{ 
		if let filter = CIFilter.colorControls(inputContrast:inputContrast,inputSaturation:inputSaturation,inputBrightness:inputBrightness){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}