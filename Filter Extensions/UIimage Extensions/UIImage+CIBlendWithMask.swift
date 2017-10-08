import Foundation

extension UIImage{ 
/// Blend With Mask
///
/// - Parameters
///   - Parameter inputMaskImage: A grayscale mask. When a mask value is 0.0, the result is the background. When the mask value is 1.0, the result is the image.
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	func blendWithMask(inputMaskImage:CIImage,inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.blendWithMask(inputMaskImage:inputMaskImage,inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}