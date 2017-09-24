import Cocoa

extension CIFilter{ 

	class func morphologyGradient(inputRadius:Double = 5)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIMorphologyGradient"){ 
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}