import Foundation

extension CIFilter{ 

	class func cMYKHalftone(inputGCR:Double = 1,inputAngle:Double = 0,inputWidth:Double = 6,inputSharpness:CGColorSpace,inputCenter:CIVector,inputUCR:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CICMYKHalftone"){ 
			filter.setValue(inputGCR, forKey:"inputGCR")
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputWidth, forKey:"inputWidth")
			filter.setValue(inputSharpness, forKey:"inputSharpness")
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputUCR, forKey:"inputUCR")
			result = filter
		}
		return result
	}
}
