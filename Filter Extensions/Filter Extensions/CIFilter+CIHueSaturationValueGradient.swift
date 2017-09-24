import Cocoa

extension CIFilter{ 

	class func hueSaturationValueGradient(inputValue:Double = 1,inputColorSpace:CGColorSpace,inputSoftness:Double = 1,inputRadius:Double = 300,inputDither:Double = 1)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIHueSaturationValueGradient"){ 
			filter.setValue(inputValue, forKey:"inputValue")
			filter.setValue(inputColorSpace, forKey:"inputColorSpace")
			filter.setValue(inputSoftness, forKey:"inputSoftness")
			filter.setValue(inputRadius, forKey:"inputRadius")
			filter.setValue(inputDither, forKey:"inputDither")
			result = filter
		}
		return result
	}
}