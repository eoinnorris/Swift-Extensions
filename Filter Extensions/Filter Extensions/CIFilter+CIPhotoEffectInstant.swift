import Foundation

extension CIFilter{ 
/// Photo Effect Instant
///
/// - Parameters

/// -  Returns: The filtered image or nil
	class func photoEffectInstant()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPhotoEffectInstant"){ 
			result = filter
		}
		return result
	}
}
