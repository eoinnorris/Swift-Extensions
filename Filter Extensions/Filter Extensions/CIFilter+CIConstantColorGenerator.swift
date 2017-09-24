import Cocoa

extension CIFilter{ 

	class func constantColorGenerator(inputColor:CIColor)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIConstantColorGenerator"){ 
			filter.setValue(inputColor, forKey:"inputColor")
			result = filter
		}
		return result
	}
}