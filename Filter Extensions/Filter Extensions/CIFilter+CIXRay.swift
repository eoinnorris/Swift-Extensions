import Foundation

extension CIFilter{ 
/// X-Ray
///
/// - Parameters

/// -  Returns: The filtered image or nil
	class func xRay()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIXRay"){ 
			result = filter
		}
		return result
	}
}
