import Foundation

extension CIFilter{ 

	class func photoEffectInstant()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPhotoEffectInstant"){ 
			result = filter
		}
		return result
	}
}
