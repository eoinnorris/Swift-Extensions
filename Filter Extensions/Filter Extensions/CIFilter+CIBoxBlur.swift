import Cocoa

extension CIFilter{ 

	class func boxBlur(inputRadius:Double = 10)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIBoxBlur"){ 
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}