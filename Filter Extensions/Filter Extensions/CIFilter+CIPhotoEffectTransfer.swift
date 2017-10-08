import Foundation

extension CIFilter{ 
/// Photo Effect Transfer
///
/// - Parameters

/// -  Returns: The filtered image or nil
	class func photoEffectTransfer()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPhotoEffectTransfer"){ 
			result = filter
		}
		return result
	}
}
