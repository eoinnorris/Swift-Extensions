import Cocoa

extension CIFilter{ 

	class func barsSwipeTransition(inputTargetImage:CIImage,inputTime:Double = 0,inputAngle:CGColorSpace,inputBarOffset:Double = 10,inputWidth:Double = 30)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIBarsSwipeTransition"){ 
			filter.setValue(inputTargetImage, forKey:"inputTargetImage")
			filter.setValue(inputTime, forKey:"inputTime")
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputBarOffset, forKey:"inputBarOffset")
			filter.setValue(inputWidth, forKey:"inputWidth")
			result = filter
		}
		return result
	}
}