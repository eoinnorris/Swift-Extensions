import Foundation

extension CIFilter{ 
/// Vignette
///
/// - Parameters
///   - Parameter inputIntensity: The intensity of the effect.
///   - Parameter inputRadius: The distance from the center of the effect.
/// -  Returns: The filtered image or nil
	class func vignette(inputIntensity:Double = 0,inputRadius:Double = 1)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIVignette"){ 
			filter.setValue(inputIntensity, forKey:"inputIntensity")
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}
