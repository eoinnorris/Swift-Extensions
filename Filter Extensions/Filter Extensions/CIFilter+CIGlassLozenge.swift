import Foundation

extension CIFilter{ 

	class func glassLozenge(inputRadius:Double = 100,inputPoint1:CIVector,inputPoint0:CIVector,inputRefraction:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIGlassLozenge"){ 
			filter.setValue(inputRadius, forKey:"inputRadius")
			filter.setValue(inputPoint1, forKey:"inputPoint1")
			filter.setValue(inputPoint0, forKey:"inputPoint0")
			filter.setValue(inputRefraction, forKey:"inputRefraction")
			result = filter
		}
		return result
	}
}
