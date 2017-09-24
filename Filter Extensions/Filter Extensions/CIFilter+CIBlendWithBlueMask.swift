import Cocoa

extension CIFilter{ 

	class func blendWithBlueMask(inputMaskImage:CIImage,inputBackgroundImage:CIImage)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIBlendWithBlueMask"){ 
			filter.setValue(inputMaskImage, forKey:"inputMaskImage")
			filter.setValue(inputBackgroundImage, forKey:"inputBackgroundImage")
			result = filter
		}
		return result
	}
}