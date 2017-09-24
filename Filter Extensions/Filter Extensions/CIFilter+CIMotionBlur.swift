import Cocoa

extension CIFilter{ 

	class func motionBlur(inputAngle:Double = 0,inputRadius:Double = 20)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIMotionBlur"){ 
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}