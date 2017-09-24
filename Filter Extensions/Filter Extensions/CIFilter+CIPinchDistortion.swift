import Cocoa

extension CIFilter{ 

	class func pinchDistortion(inputCenter:CIVector,inputRadius:Double = 300,inputScale:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPinchDistortion"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputRadius, forKey:"inputRadius")
			filter.setValue(inputScale, forKey:"inputScale")
			result = filter
		}
		return result
	}
}