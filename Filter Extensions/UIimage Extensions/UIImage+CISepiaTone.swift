import Foundation

extension UIImage{ 
/// Sepia Tone
///
/// - Parameters
///   - Parameter inputIntensity: The intensity of the sepia effect. A value of 1.0 creates a monochrome sepia image. A value of 0.0 has no effect on the image.
/// -  Returns: The filtered image or nil
	func sepiaTone(inputIntensity:Double = 1)->UIImage?{ 
		if let filter = CIFilter.sepiaTone(inputIntensity:inputIntensity){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}