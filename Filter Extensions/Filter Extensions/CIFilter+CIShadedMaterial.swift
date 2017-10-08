import Foundation

extension CIFilter{ 
/// Shaded Material
///
/// - Parameters
///   - Parameter inputShadingImage: The image to use as the height field. The resulting image has greater heights with lighter shades, and lesser heights (lower areas) with darker shades.
///   - Parameter inputScale: The scale of the effect. The higher the value, the more dramatic the effect.
/// -  Returns: The filtered image or nil
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
