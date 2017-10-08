import Foundation

extension CIFilter{ 
/// Sharpen Luminance
///
/// - Parameters
///   - Parameter inputRadius: The distance from the center of the effect.
///   - Parameter inputSharpness: The amount of sharpening to apply. Larger values are sharper.
/// -  Returns: The filtered image or nil
	class func sharpenLuminance(inputRadius:CGColorSpace,inputSharpness:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CISharpenLuminance"){ 
			filter.setValue(inputRadius, forKey:"inputRadius")
			filter.setValue(inputSharpness, forKey:"inputSharpness")
			result = filter
		}
		return result
	}
}
