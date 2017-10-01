import Foundation

extension CIFilter{ 

	class func heightFieldFromMask(inputRadius:Double = 10)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIHeightFieldFromMask"){ 
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}
