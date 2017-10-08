import Foundation

extension UIImage{ 
/// Sharpen Luminance
///
/// - Parameters
///   - Parameter inputRadius: The distance from the center of the effect.
///   - Parameter inputSharpness: The amount of sharpening to apply. Larger values are sharper.
/// -  Returns: The filtered image or nil
	func sharpenLuminance(inputRadius:CGColorSpace,inputSharpness:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.sharpenLuminance(inputRadius:inputRadius,inputSharpness:inputSharpness){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}