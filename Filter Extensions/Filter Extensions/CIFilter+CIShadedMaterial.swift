import Cocoa

extension CIFilter{ 

	class func shadedMaterial(inputShadingImage:CIImage,inputScale:Double = 10)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIShadedMaterial"){ 
			filter.setValue(inputShadingImage, forKey:"inputShadingImage")
			filter.setValue(inputScale, forKey:"inputScale")
			result = filter
		}
		return result
	}
}