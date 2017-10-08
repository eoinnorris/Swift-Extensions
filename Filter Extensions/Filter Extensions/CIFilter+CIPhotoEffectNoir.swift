import Foundation

extension CIFilter{ 
/// Photo Effect Noir
///
/// - Parameters

/// -  Returns: The filtered image or nil
	class func photoEffectNoir()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPhotoEffectNoir"){ 
			result = filter
		}
		return result
	}
}
