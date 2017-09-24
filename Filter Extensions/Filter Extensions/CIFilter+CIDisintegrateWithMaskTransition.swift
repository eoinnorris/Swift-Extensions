import Cocoa

extension CIFilter{ 

	class func disintegrateWithMaskTransition(inputMaskImage:CIImage,inputTargetImage:CIImage,inputShadowRadius:Double = 8,inputTime:Double = 0,inputShadowOffset:CIVector,inputShadowDensity:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIDisintegrateWithMaskTransition"){ 
			filter.setValue(inputMaskImage, forKey:"inputMaskImage")
			filter.setValue(inputTargetImage, forKey:"inputTargetImage")
			filter.setValue(inputShadowRadius, forKey:"inputShadowRadius")
			filter.setValue(inputTime, forKey:"inputTime")
			filter.setValue(inputShadowOffset, forKey:"inputShadowOffset")
			filter.setValue(inputShadowDensity, forKey:"inputShadowDensity")
			result = filter
		}
		return result
	}
}