import Foundation

extension CIFilter{ 
/// Sunbeams
///
/// - Parameters
///   - Parameter inputStriationContrast: The contrast of the sunbeams. Higher values result in more contrast.
///   - Parameter inputColor: The color of the sun.
///   - Parameter inputTime: The duration of the effect.
///   - Parameter inputSunRadius: The radius of the sun.
///   - Parameter inputCenter: The x and y position to use as the center of the sunbeam pattern
///   - Parameter inputMaxStriationRadius: The radius of the sunbeams.
///   - Parameter inputStriationStrength: The intensity of the sunbeams. Higher values result in more intensity.
/// -  Returns: The filtered image or nil
	class func sunbeamsGenerator(inputStriationContrast:CGColorSpace,inputColor:CIColor,inputTime:Double = 0,inputSunRadius:Double = 40,inputCenter:CIVector,inputMaxStriationRadius:CGColorSpace,inputStriationStrength:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CISunbeamsGenerator"){ 
			filter.setValue(inputStriationContrast, forKey:"inputStriationContrast")
			filter.setValue(inputColor, forKey:"inputColor")
			filter.setValue(inputTime, forKey:"inputTime")
			filter.setValue(inputSunRadius, forKey:"inputSunRadius")
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputMaxStriationRadius, forKey:"inputMaxStriationRadius")
			filter.setValue(inputStriationStrength, forKey:"inputStriationStrength")
			result = filter
		}
		return result
	}
}
