import Foundation

extension CIFilter{ 
/// Gloom
///
/// - Parameters
///   - Parameter inputIntensity: The intensity of the effect. A value of 0.0 is no effect. A value of 1.0 is the maximum effect.
///   - Parameter inputRadius: The radius determines how many pixels are used to create the effect. The larger the radius, the greater the effect.
/// -  Returns: The filtered image or nil
	class func gloom(inputIntensity:CGColorSpace,inputRadius:Double = 10)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIGloom"){ 
			filter.setValue(inputIntensity, forKey:"inputIntensity")
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}
