import Foundation

extension UIImage{ 
/// Glass Distortion
///
/// - Parameters
///   - Parameter inputTexture: A texture to apply to the source image.
///   - Parameter inputCenter: The center of the effect as x and y coordinates.
///   - Parameter inputScale: The amount of texturing of the resulting image. The larger the value, the greater the texturing.
/// -  Returns: The filtered image or nil
	func glassDistortion(inputTexture:CIImage,inputCenter:CIVector,inputScale:Double = 200)->UIImage?{ 
		if let filter = CIFilter.glassDistortion(inputTexture:inputTexture,inputCenter:inputCenter,inputScale:inputScale){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}