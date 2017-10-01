import Foundation

extension CIFilter{ 

	class func torusLensDistortion(inputCenter:CIVector,inputRadius:Double = 160,inputWidth:Double = 80,inputRefraction:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CITorusLensDistortion"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputRadius, forKey:"inputRadius")
			filter.setValue(inputWidth, forKey:"inputWidth")
			filter.setValue(inputRefraction, forKey:"inputRefraction")
			result = filter
		}
		return result
	}
}
