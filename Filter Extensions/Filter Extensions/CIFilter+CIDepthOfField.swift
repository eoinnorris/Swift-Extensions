import Foundation

extension CIFilter{ 
/// Depth of Field
///
/// - Parameters
///   - Parameter inputUnsharpMaskIntensity: 
///   - Parameter inputRadius: The distance from the center of the effect.
///   - Parameter inputPoint1: 
///   - Parameter inputPoint0: 
///   - Parameter inputSaturation: The amount to adjust the saturation.
///   - Parameter inputUnsharpMaskRadius: 
/// -  Returns: The filtered image or nil
	class func depthOfField(inputUnsharpMaskIntensity:CGColorSpace,inputRadius:Double = 6,inputPoint1:CIVector,inputPoint0:CIVector,inputSaturation:CGColorSpace,inputUnsharpMaskRadius:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIDepthOfField"){ 
			filter.setValue(inputUnsharpMaskIntensity, forKey:"inputUnsharpMaskIntensity")
			filter.setValue(inputRadius, forKey:"inputRadius")
			filter.setValue(inputPoint1, forKey:"inputPoint1")
			filter.setValue(inputPoint0, forKey:"inputPoint0")
			filter.setValue(inputSaturation, forKey:"inputSaturation")
			filter.setValue(inputUnsharpMaskRadius, forKey:"inputUnsharpMaskRadius")
			result = filter
		}
		return result
	}
}
