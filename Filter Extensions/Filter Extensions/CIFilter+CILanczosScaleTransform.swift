import Foundation

extension CIFilter{ 

	class func lanczosScaleTransform(inputAspectRatio:Double = 1,inputScale:Double = 1)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CILanczosScaleTransform"){ 
			filter.setValue(inputAspectRatio, forKey:"inputAspectRatio")
			filter.setValue(inputScale, forKey:"inputScale")
			result = filter
		}
		return result
	}
}
