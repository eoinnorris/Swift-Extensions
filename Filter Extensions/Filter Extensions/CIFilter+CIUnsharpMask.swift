import Foundation

extension CIFilter{ 
/// Unsharp Mask
///
/// - Parameters
///   - Parameter inputIntensity: The intensity of the effect. The larger the value, the more contrast in the affected area.
///   - Parameter inputRadius: The radius around a given pixel to apply the unsharp mask. The larger the radius, the more of the image is affected.
/// -  Returns: The filtered image or nil
	class func unsharpMask(inputIntensity:CGColorSpace,inputRadius:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIUnsharpMask"){ 
			filter.setValue(inputIntensity, forKey:"inputIntensity")
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}
