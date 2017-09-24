import Cocoa

extension CIFilter{ 

	class func blendWithRedMask(inputMaskImage:CIImage,inputBackgroundImage:CIImage)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIBlendWithRedMask"){ 
			filter.setValue(inputMaskImage, forKey:"inputMaskImage")
			filter.setValue(inputBackgroundImage, forKey:"inputBackgroundImage")
			result = filter
		}
		return result
	}
}