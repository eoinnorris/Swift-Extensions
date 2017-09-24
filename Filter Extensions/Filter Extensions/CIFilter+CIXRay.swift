import Cocoa

extension CIFilter{ 

	class func xRay()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIXRay"){ 
			result = filter
		}
		return result
	}
}