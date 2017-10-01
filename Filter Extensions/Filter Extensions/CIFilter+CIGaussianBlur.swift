import Foundation

extension CIFilter{ 

	class func gaussianBlur(inputRadius:Double = 10)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIGaussianBlur"){ 
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}
