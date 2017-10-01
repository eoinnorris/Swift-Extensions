import Foundation

extension CIFilter{ 

	class func photoEffectNoir()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPhotoEffectNoir"){ 
			result = filter
		}
		return result
	}
}
