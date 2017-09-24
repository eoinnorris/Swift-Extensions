import Cocoa

extension CIFilter{ 

	class func bumpDistortionLinear(inputCenter:CIVector,inputAngle:Double = 0,inputRadius:Double = 300,inputScale:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIBumpDistortionLinear"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputRadius, forKey:"inputRadius")
			filter.setValue(inputScale, forKey:"inputScale")
			result = filter
		}
		return result
	}
}