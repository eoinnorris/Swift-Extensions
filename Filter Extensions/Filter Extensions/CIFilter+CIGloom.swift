import Cocoa

extension CIFilter{ 

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