import Foundation

extension CIFilter{ 

	class func maskedVariableBlur(inputMask:CIImage,inputRadius:Double = 5)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIMaskedVariableBlur"){ 
			filter.setValue(inputMask, forKey:"inputMask")
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}
