import Foundation

extension CIFilter{ 

	class func photoEffectMono()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPhotoEffectMono"){ 
			result = filter
		}
		return result
	}
}
