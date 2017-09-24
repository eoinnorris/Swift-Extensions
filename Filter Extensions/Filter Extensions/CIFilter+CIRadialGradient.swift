import Cocoa

extension CIFilter{ 

	class func radialGradient(inputCenter:CIVector,inputColor0:CIColor,inputRadius1:Double = 100,inputRadius0:Double = 5,inputColor1:CIColor)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIRadialGradient"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputColor0, forKey:"inputColor0")
			filter.setValue(inputRadius1, forKey:"inputRadius1")
			filter.setValue(inputRadius0, forKey:"inputRadius0")
			filter.setValue(inputColor1, forKey:"inputColor1")
			result = filter
		}
		return result
	}
}