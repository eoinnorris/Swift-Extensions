import Foundation

extension CIFilter{ 
/// Color Monochrome
///
/// - Parameters
///   - Parameter inputColor: The monochrome color to apply to the image.
///   - Parameter inputIntensity: The intensity of the monochrome effect. A value of 1.0 creates a monochrome image using the supplied color. A value of 0.0 has no effect on the image.
/// -  Returns: The filtered image or nil
	class func colorMonochrome(inputColor:CIColor,inputIntensity:Double = 1)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIColorMonochrome"){ 
			filter.setValue(inputColor, forKey:"inputColor")
			filter.setValue(inputIntensity, forKey:"inputIntensity")
			result = filter
		}
		return result
	}
}
