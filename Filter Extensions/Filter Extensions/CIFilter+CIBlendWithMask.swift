import Foundation

extension CIFilter{ 

	class func blendWithMask(inputMaskImage:CIImage,inputBackgroundImage:CIImage)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIBlendWithMask"){ 
			filter.setValue(inputMaskImage, forKey:"inputMaskImage")
			filter.setValue(inputBackgroundImage, forKey:"inputBackgroundImage")
			result = filter
		}
		return result
	}
}
