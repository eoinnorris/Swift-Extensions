import Foundation

extension UIImage{ 
/// Shaded Material
///
/// - Parameters
///   - Parameter inputShadingImage: The image to use as the height field. The resulting image has greater heights with lighter shades, and lesser heights (lower areas) with darker shades.
///   - Parameter inputScale: The scale of the effect. The higher the value, the more dramatic the effect.
/// -  Returns: The filtered image or nil
	func shadedMaterial(inputShadingImage:CIImage,inputScale:Double = 10)->UIImage?{ 
		if let filter = CIFilter.shadedMaterial(inputShadingImage:inputShadingImage,inputScale:inputScale){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}