import Cocoa

extension CIFilter{ 

	class func circularScreen(inputCenter:CIVector,inputWidth:Double = 6,inputSharpness:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CICircularScreen"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputWidth, forKey:"inputWidth")
			filter.setValue(inputSharpness, forKey:"inputSharpness")
			result = filter
		}
		return result
	}
}