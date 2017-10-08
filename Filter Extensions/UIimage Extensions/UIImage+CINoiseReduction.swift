import Foundation

extension UIImage{ 
/// Noise Reduction
///
/// - Parameters
///   - Parameter inputSharpness: The sharpness of the final image. The larger the value, the sharper the result.
///   - Parameter inputNoiseLevel: The amount of noise reduction. The larger the value, the more noise reduction.
/// -  Returns: The filtered image or nil
	func noiseReduction(inputSharpness:CGColorSpace,inputNoiseLevel:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.noiseReduction(inputSharpness:inputSharpness,inputNoiseLevel:inputNoiseLevel){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}