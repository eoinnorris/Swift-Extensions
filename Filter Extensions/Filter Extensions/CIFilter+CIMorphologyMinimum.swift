import Cocoa

extension CIFilter{ 

	class func morphologyMinimum(inputRadius:Double = 0)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIMorphologyMinimum"){ 
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}