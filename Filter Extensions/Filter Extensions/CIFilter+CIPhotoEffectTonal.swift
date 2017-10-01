import Foundation

extension CIFilter{ 

	class func photoEffectTonal()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPhotoEffectTonal"){ 
			result = filter
		}
		return result
	}
}
