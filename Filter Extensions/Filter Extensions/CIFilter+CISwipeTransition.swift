import Cocoa

extension CIFilter{ 

	class func swipeTransition(inputTargetImage:CIImage,inputColor:CIColor,inputExtent:CIVector,inputOpacity:Double = 0,inputTime:Double = 0,inputAngle:Double = 0,inputWidth:Double = 300)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CISwipeTransition"){ 
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