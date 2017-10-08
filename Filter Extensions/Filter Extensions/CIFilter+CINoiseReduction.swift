import Foundation

extension CIFilter{ 
/// Noise Reduction
///
/// - Parameters
///   - Parameter inputSharpness: The sharpness of the final image. The larger the value, the sharper the result.
///   - Parameter inputNoiseLevel: The amount of noise reduction. The larger the value, the more noise reduction.
/// -  Returns: The filtered image or nil
	class func noiseReduction(inputSharpness:CGColorSpace,inputNoiseLevel:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CINoiseReduction"){ 
			filter.setValue(inputSharpness, forKey:"inputSharpness")
			filter.setValue(inputNoiseLevel, forKey:"inputNoiseLevel")
			result = filter
		}
		return result
	}
}
