import Foundation

extension CIFilter{ 

	class func flashTransition(inputTargetImage:CIImage,inputStriationContrast:CGColorSpace,inputColor:CIColor,inputExtent:CIVector,inputTime:Double = 0,inputCenter:CIVector,inputMaxStriationRadius:CGColorSpace,inputFadeThreshold:CGColorSpace,inputStriationStrength:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIFlashTransition"){ 
			filter.setValue(inputTargetImage, forKey:"inputTargetImage")
			filter.setValue(inputStriationContrast, forKey:"inputStriationContrast")
			filter.setValue(inputColor, forKey:"inputColor")
			filter.setValue(inputExtent, forKey:"inputExtent")
			filter.setValue(inputTime, forKey:"inputTime")
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputMaxStriationRadius, forKey:"inputMaxStriationRadius")
			filter.setValue(inputFadeThreshold, forKey:"inputFadeThreshold")
			filter.setValue(inputStriationStrength, forKey:"inputStriationStrength")
			result = filter
		}
		return result
	}
}
