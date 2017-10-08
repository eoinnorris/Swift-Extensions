import Foundation

extension CIFilter{ 
/// Color Controls
///
/// - Parameters
///   - Parameter inputContrast: The amount of contrast to apply. The larger the value, the more contrast in the resulting image.
///   - Parameter inputSaturation: The amount of saturation to apply. The larger the value, the more saturated the result.
///   - Parameter inputBrightness: The amount of brightness to apply. The larger the value, the brighter the result.
/// -  Returns: The filtered image or nil
	class func colorControls(inputContrast:Double = 1,inputSaturation:Double = 1,inputBrightness:Double = 0)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIColorControls"){ 
			filter.setValue(inputContrast, forKey:"inputContrast")
			filter.setValue(inputSaturation, forKey:"inputSaturation")
			filter.setValue(inputBrightness, forKey:"inputBrightness")
			result = filter
		}
		return result
	}
}
