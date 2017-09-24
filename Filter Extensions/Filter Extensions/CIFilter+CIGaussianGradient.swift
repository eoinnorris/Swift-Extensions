import Cocoa

extension CIFilter{ 

	class func gaussianGradient(inputCenter:CIVector,inputColor0:CIColor,inputRadius:Double = 300,inputColor1:CIColor)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIGaussianGradient"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputColor0, forKey:"inputColor0")
			filter.setValue(inputRadius, forKey:"inputRadius")
			filter.setValue(inputColor1, forKey:"inputColor1")
			result = filter
		}
		return result
	}
}