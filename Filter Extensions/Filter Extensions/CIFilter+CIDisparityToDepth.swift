import Foundation

extension CIFilter{ 
/// Disparity To Depth
///
/// - Parameters

/// -  Returns: The filtered image or nil
	class func disparityToDepth()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIDisparityToDepth"){ 
			result = filter
		}
		return result
	}
}
