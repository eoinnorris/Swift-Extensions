import Foundation

extension CIFilter{ 

	class func discBlur(inputRadius:Double = 8)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIDiscBlur"){ 
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}
