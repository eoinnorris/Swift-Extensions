import Foundation

extension CIFilter{ 
/// Vignette Effect
///
/// - Parameters
///   - Parameter inputCenter: The center of the effect as x and y coordinates.
///   - Parameter inputIntensity: The intensity of the effect.
///   - Parameter inputRadius: The distance from the center of the effect.
///   - Parameter inputFalloff: 
/// -  Returns: The filtered image or nil
	class func vignetteEffect(inputCenter:CIVector,inputIntensity:Double = 1,inputRadius:Double = 150,inputFalloff:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIVignetteEffect"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputIntensity, forKey:"inputIntensity")
			filter.setValue(inputRadius, forKey:"inputRadius")
			filter.setValue(inputFalloff, forKey:"inputFalloff")
			result = filter
		}
		return result
	}
}
