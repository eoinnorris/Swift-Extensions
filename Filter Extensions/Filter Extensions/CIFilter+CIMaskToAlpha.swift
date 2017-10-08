import Foundation

extension CIFilter{ 
/// Mask to Alpha
///
/// - Parameters

/// -  Returns: The filtered image or nil
	class func maskToAlpha()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIMaskToAlpha"){ 
			result = filter
		}
		return result
	}
}
