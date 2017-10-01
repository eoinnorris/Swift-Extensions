import Foundation

extension CIFilter{ 

	class func depthToDisparity()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIDepthToDisparity"){ 
			result = filter
		}
		return result
	}
}
