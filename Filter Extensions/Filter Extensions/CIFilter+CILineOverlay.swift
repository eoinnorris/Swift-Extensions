import Foundation

extension CIFilter{ 

	class func lineOverlay(inputThreshold:CGColorSpace,inputNRSharpness:CGColorSpace,inputNRNoiseLevel:CGColorSpace,inputContrast:Double = 50,inputEdgeIntensity:Double = 1)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CILineOverlay"){ 
			filter.setValue(inputThreshold, forKey:"inputThreshold")
			filter.setValue(inputNRSharpness, forKey:"inputNRSharpness")
			filter.setValue(inputNRNoiseLevel, forKey:"inputNRNoiseLevel")
			filter.setValue(inputContrast, forKey:"inputContrast")
			filter.setValue(inputEdgeIntensity, forKey:"inputEdgeIntensity")
			result = filter
		}
		return result
	}
}
