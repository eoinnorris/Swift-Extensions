import Foundation

extension CIFilter{ 

	class func unsharpMask(inputIntensity:CGColorSpace,inputRadius:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIUnsharpMask"){ 
			filter.setValue(inputIntensity, forKey:"inputIntensity")
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}
