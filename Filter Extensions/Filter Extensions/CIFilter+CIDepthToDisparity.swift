import Foundation

extension CIFilter{ 
/// Depth To Disparity
///
/// - Parameters

/// -  Returns: The filtered image or nil
	class func depthToDisparity()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIDepthToDisparity"){ 
			result = filter
		}
		return result
	}
}
