import Foundation

extension CIFilter{ 

	class func modTransition(inputTargetImage:CIImage,inputTime:Double = 0,inputAngle:Double = 2,inputCompression:Double = 300,inputRadius:Double = 150,inputCenter:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIModTransition"){ 
			filter.setValue(inputTargetImage, forKey:"inputTargetImage")
			filter.setValue(inputTime, forKey:"inputTime")
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputCompression, forKey:"inputCompression")
			filter.setValue(inputRadius, forKey:"inputRadius")
			filter.setValue(inputCenter, forKey:"inputCenter")
			result = filter
		}
		return result
	}
}
