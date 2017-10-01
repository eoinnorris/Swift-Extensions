import Foundation

extension CIFilter{ 

	class func sepiaTone(inputIntensity:Double = 1)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CISepiaTone"){ 
			filter.setValue(inputIntensity, forKey:"inputIntensity")
			result = filter
		}
		return result
	}
}
