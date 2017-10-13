import Foundation

extension UIImage{ 
/// Vignette Effect
///
/// - Parameters
///   - Parameter inputCenter: The center of the effect as x and y coordinates.
///   - Parameter inputIntensity: The intensity of the effect.
///   - Parameter inputRadius: The distance from the center of the effect.
///   - Parameter inputFalloff: 
/// -  Returns: The filtered image or nil
	func vignetteEffect(inputCenter:CIVector,inputIntensity:Double = 1,inputRadius:Double = 150,inputFalloff:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.vignetteEffect(inputCenter:inputCenter,inputIntensity:inputIntensity,inputRadius:inputRadius,inputFalloff:inputFalloff){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}