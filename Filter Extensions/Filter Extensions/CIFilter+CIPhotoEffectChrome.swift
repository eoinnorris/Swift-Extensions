import Cocoa

extension CIFilter{ 

	class func photoEffectChrome()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPhotoEffectChrome"){ 
			result = filter
		}
		return result
	}
}