import Foundation

extension CIFilter{ 

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
