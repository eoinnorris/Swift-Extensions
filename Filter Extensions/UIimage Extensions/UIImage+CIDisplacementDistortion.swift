import Foundation

extension UIImage{ 
/// Displacement Distortion
///
/// - Parameters
///   - Parameter inputDisplacementImage: An image whose grayscale values will be applied to the source image.
///   - Parameter inputScale: The amount of texturing of the resulting image. The larger the value, the greater the texturing.
/// -  Returns: The filtered image or nil
	func displacementDistortion(inputDisplacementImage:CIImage,inputScale:Double = 50)->UIImage?{ 
		if let filter = CIFilter.displacementDistortion(inputDisplacementImage:inputDisplacementImage,inputScale:inputScale){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}