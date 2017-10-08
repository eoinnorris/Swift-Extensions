import Foundation

extension CIFilter{ 
/// Photo Effect Tonal
///
/// - Parameters

/// -  Returns: The filtered image or nil
	class func photoEffectTonal()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPhotoEffectTonal"){ 
			result = filter
		}
		return result
	}
}
