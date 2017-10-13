import Foundation

extension UIImage{ 
/// Vignette
///
/// - Parameters
///   - Parameter inputIntensity: The intensity of the effect.
///   - Parameter inputRadius: The distance from the center of the effect.
/// -  Returns: The filtered image or nil
	func vignette(inputIntensity:Double = 0,inputRadius:Double = 1)->UIImage?{ 
		if let filter = CIFilter.vignette(inputIntensity:inputIntensity,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}