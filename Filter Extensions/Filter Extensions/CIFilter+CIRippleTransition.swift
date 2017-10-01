import Foundation

extension CIFilter{ 

	class func rippleTransition(inputShadingImage:CIImage,inputTargetImage:CIImage,inputExtent:CIVector,inputTime:Double = 0,inputWidth:Double = 100,inputScale:Double = 50,inputCenter:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIRippleTransition"){ 
			filter.setValue(inputShadingImage, forKey:"inputShadingImage")
			filter.setValue(inputTargetImage, forKey:"inputTargetImage")
			filter.setValue(inputExtent, forKey:"inputExtent")
			filter.setValue(inputTime, forKey:"inputTime")
			filter.setValue(inputWidth, forKey:"inputWidth")
			filter.setValue(inputScale, forKey:"inputScale")
			filter.setValue(inputCenter, forKey:"inputCenter")
			result = filter
		}
		return result
	}
}
