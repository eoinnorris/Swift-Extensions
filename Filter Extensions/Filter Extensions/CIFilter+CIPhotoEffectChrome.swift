import Foundation

extension CIFilter{ 
/// Photo Effect Chrome
///
/// - Parameters

/// -  Returns: The filtered image or nil
	class func photoEffectChrome()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPhotoEffectChrome"){ 
			result = filter
		}
		return result
	}
}
