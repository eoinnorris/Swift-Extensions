import Foundation

extension CIFilter{ 

	class func pageCurlWithShadowTransition(inputTargetImage:CIImage,inputBacksideImage:CIImage,inputExtent:CIVector,inputShadowAmount:CGColorSpace,inputTime:Double = 0,inputAngle:Double = 0,inputRadius:Double = 100,inputShadowSize:CGColorSpace,inputShadowExtent:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPageCurlWithShadowTransition"){ 
			filter.setValue(inputTargetImage, forKey:"inputTargetImage")
			filter.setValue(inputBacksideImage, forKey:"inputBacksideImage")
			filter.setValue(inputExtent, forKey:"inputExtent")
			filter.setValue(inputShadowAmount, forKey:"inputShadowAmount")
			filter.setValue(inputTime, forKey:"inputTime")
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputRadius, forKey:"inputRadius")
			filter.setValue(inputShadowSize, forKey:"inputShadowSize")
			filter.setValue(inputShadowExtent, forKey:"inputShadowExtent")
			result = filter
		}
		return result
	}
}
