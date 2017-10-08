import Foundation

extension CIFilter{ 
/// Photo Effect Fade
///
/// - Parameters

/// -  Returns: The filtered image or nil
	class func photoEffectFade()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPhotoEffectFade"){ 
			result = filter
		}
		return result
	}
}
