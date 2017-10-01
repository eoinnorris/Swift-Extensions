import Foundation

extension CIFilter{ 

	class func colorMonochrome(inputColor:CIColor,inputIntensity:Double = 1)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIColorMonochrome"){ 
			filter.setValue(inputColor, forKey:"inputColor")
			filter.setValue(inputIntensity, forKey:"inputIntensity")
			result = filter
		}
		return result
	}
}
