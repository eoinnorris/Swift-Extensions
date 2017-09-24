import Cocoa

extension CIFilter{ 

	class func falseColor(inputColor0:CIColor,inputColor1:CIColor)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIFalseColor"){ 
			filter.setValue(inputColor0, forKey:"inputColor0")
			filter.setValue(inputColor1, forKey:"inputColor1")
			result = filter
		}
		return result
	}
}