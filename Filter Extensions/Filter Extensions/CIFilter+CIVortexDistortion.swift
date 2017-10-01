import Foundation

extension CIFilter{ 

	class func vortexDistortion(inputCenter:CIVector,inputAngle:CGColorSpace,inputRadius:Double = 300)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIVortexDistortion"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}
