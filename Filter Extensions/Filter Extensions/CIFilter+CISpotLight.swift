import Foundation

extension CIFilter{ 

	class func spotLight(inputColor:CIColor,inputLightPointsAt:CIVector,inputConcentration:CGColorSpace,inputLightPosition:CIVector,inputBrightness:Double = 3)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CISpotLight"){ 
			filter.setValue(inputColor, forKey:"inputColor")
			filter.setValue(inputLightPointsAt, forKey:"inputLightPointsAt")
			filter.setValue(inputConcentration, forKey:"inputConcentration")
			filter.setValue(inputLightPosition, forKey:"inputLightPosition")
			filter.setValue(inputBrightness, forKey:"inputBrightness")
			result = filter
		}
		return result
	}
}
