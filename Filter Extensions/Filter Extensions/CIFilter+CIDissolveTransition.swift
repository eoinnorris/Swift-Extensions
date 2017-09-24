import Cocoa

extension CIFilter{ 

	class func dissolveTransition(inputTargetImage:CIImage,inputTime:Double = 0)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIDissolveTransition"){ 
			filter.setValue(inputTargetImage, forKey:"inputTargetImage")
			filter.setValue(inputTime, forKey:"inputTime")
			result = filter
		}
		return result
	}
}