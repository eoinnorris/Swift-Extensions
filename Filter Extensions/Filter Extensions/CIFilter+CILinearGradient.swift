import Foundation

extension CIFilter{ 

	class func linearGradient(inputColor0:CIColor,inputPoint1:CIVector,inputPoint0:CIVector,inputColor1:CIColor)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CILinearGradient"){ 
			filter.setValue(inputColor0, forKey:"inputColor0")
			filter.setValue(inputPoint1, forKey:"inputPoint1")
			filter.setValue(inputPoint0, forKey:"inputPoint0")
			filter.setValue(inputColor1, forKey:"inputColor1")
			result = filter
		}
		return result
	}
}
