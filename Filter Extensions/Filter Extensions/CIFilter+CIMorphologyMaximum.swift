import Cocoa

extension CIFilter{ 

	class func morphologyMaximum(inputRadius:Double = 0)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIMorphologyMaximum"){ 
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}