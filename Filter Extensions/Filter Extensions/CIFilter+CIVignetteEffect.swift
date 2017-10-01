import Foundation

extension CIFilter{ 

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
