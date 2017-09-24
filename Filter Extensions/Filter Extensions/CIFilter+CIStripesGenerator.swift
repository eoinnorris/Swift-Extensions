import Cocoa

extension CIFilter{ 

	class func stripesGenerator(inputCenter:CIVector,inputColor1:CIColor,inputColor0:CIColor,inputWidth:Double = 80,inputSharpness:Double = 1)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIStripesGenerator"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputColor1, forKey:"inputColor1")
			filter.setValue(inputColor0, forKey:"inputColor0")
			filter.setValue(inputWidth, forKey:"inputWidth")
			filter.setValue(inputSharpness, forKey:"inputSharpness")
			result = filter
		}
		return result
	}
}