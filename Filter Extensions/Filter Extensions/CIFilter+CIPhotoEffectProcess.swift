import Foundation

extension CIFilter{ 
/// Photo Effect Process
///
/// - Parameters

/// -  Returns: The filtered image or nil
	class func photoEffectProcess()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPhotoEffectProcess"){ 
			result = filter
		}
		return result
	}
}
