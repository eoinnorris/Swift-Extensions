import Cocoa

extension CIFilter{ 

	class func sharpenLuminance(inputSharpness:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CISharpenLuminance"){ 
			filter.setValue(inputSharpness, forKey:"inputSharpness")
			result = filter
		}
		return result
	}
}