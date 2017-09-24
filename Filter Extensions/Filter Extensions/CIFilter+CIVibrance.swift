import Cocoa

extension CIFilter{ 

	class func vibrance(inputAmount:Double = 0)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIVibrance"){ 
			filter.setValue(inputAmount, forKey:"inputAmount")
			result = filter
		}
		return result
	}
}