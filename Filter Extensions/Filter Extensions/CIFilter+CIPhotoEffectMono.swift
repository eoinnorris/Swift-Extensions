import Foundation

extension CIFilter{ 
/// Photo Effect Mono
///
/// - Parameters

/// -  Returns: The filtered image or nil
	class func photoEffectMono()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPhotoEffectMono"){ 
			result = filter
		}
		return result
	}
}
