import Foundation

extension CIFilter{ 

	class func photoEffectProcess()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPhotoEffectProcess"){ 
			result = filter
		}
		return result
	}
}
