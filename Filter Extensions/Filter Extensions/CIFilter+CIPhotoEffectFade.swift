import Foundation

extension CIFilter{ 

	class func photoEffectFade()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPhotoEffectFade"){ 
			result = filter
		}
		return result
	}
}
