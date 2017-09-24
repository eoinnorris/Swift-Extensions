import Cocoa

extension CIFilter{ 

	class func triangleKaleidoscope(inputRotation:CGColorSpace,inputDecay:CGColorSpace,inputPoint:CIVector,inputSize:Double = 700)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CITriangleKaleidoscope"){ 
			filter.setValue(inputRotation, forKey:"inputRotation")
			filter.setValue(inputDecay, forKey:"inputDecay")
			filter.setValue(inputPoint, forKey:"inputPoint")
			filter.setValue(inputSize, forKey:"inputSize")
			result = filter
		}
		return result
	}
}