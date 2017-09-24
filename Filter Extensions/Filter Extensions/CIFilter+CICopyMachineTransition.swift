import Cocoa

extension CIFilter{ 

	class func copyMachineTransition(inputTargetImage:CIImage,inputColor:CIColor,inputExtent:CIVector,inputOpacity:CGColorSpace,inputTime:Double = 0,inputAngle:Double = 0,inputWidth:Double = 200)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CICopyMachineTransition"){ 
			filter.setValue(inputTargetImage, forKey:"inputTargetImage")
			filter.setValue(inputColor, forKey:"inputColor")
			filter.setValue(inputExtent, forKey:"inputExtent")
			filter.setValue(inputOpacity, forKey:"inputOpacity")
			filter.setValue(inputTime, forKey:"inputTime")
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputWidth, forKey:"inputWidth")
			result = filter
		}
		return result
	}
}