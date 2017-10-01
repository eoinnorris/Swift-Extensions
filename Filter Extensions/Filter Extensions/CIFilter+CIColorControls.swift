import Foundation

extension CIFilter{ 

	class func colorControls(inputContrast:Double = 1,inputSaturation:Double = 1,inputBrightness:Double = 0)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIColorControls"){ 
			filter.setValue(inputContrast, forKey:"inputContrast")
			filter.setValue(inputSaturation, forKey:"inputSaturation")
			filter.setValue(inputBrightness, forKey:"inputBrightness")
			result = filter
		}
		return result
	}
}
