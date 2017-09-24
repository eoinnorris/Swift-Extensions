import Cocoa

extension CIFilter{ 

	class func photoEffectTransfer()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPhotoEffectTransfer"){ 
			result = filter
		}
		return result
	}
}