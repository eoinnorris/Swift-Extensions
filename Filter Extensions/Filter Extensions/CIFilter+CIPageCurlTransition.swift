import Foundation

extension CIFilter{ 

	class func pageCurlTransition(inputShadingImage:CIImage,inputTargetImage:CIImage,inputBacksideImage:CIImage,inputExtent:CIVector,inputTime:Double = 0,inputAngle:Double = 0,inputRadius:Double = 100)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPageCurlTransition"){ 
			filter.setValue(inputShadingImage, forKey:"inputShadingImage")
			filter.setValue(inputTargetImage, forKey:"inputTargetImage")
			filter.setValue(inputBacksideImage, forKey:"inputBacksideImage")
			filter.setValue(inputExtent, forKey:"inputExtent")
			filter.setValue(inputTime, forKey:"inputTime")
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}
