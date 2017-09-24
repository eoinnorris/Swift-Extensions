import Cocoa

extension CIFilter{ 

	class func bicubicScaleTransform(inputScale:Double = 1,inputAspectRatio:Double = 1,inputB:Double = 0,inputC:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIBicubicScaleTransform"){ 
			filter.setValue(inputScale, forKey:"inputScale")
			filter.setValue(inputAspectRatio, forKey:"inputAspectRatio")
			filter.setValue(inputB, forKey:"inputB")
			filter.setValue(inputC, forKey:"inputC")
			result = filter
		}
		return result
	}
}