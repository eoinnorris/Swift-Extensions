import Foundation

extension CIFilter{ 

	class func starShineGenerator(inputColor:CIColor,inputCrossAngle:CGColorSpace,inputCrossWidth:CGColorSpace,inputRadius:Double = 50,inputEpsilon:Double = -2,inputCrossScale:Double = 15,inputCenter:CIVector,inputCrossOpacity:Double = -2)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIStarShineGenerator"){ 
			filter.setValue(inputColor, forKey:"inputColor")
			filter.setValue(inputCrossAngle, forKey:"inputCrossAngle")
			filter.setValue(inputCrossWidth, forKey:"inputCrossWidth")
			filter.setValue(inputRadius, forKey:"inputRadius")
			filter.setValue(inputEpsilon, forKey:"inputEpsilon")
			filter.setValue(inputCrossScale, forKey:"inputCrossScale")
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputCrossOpacity, forKey:"inputCrossOpacity")
			result = filter
		}
		return result
	}
}
