import Foundation

extension UIImage{ 
/// Bloom
///
/// - Parameters
///   - Parameter inputIntensity: The intensity of the effect. A value of 0.0 is no effect. A value of 1.0 is the maximum effect.
///   - Parameter inputRadius: The radius determines how many pixels are used to create the effect. The larger the radius, the greater the effect.
/// -  Returns: The filtered image or nil
	func bloom(inputIntensity:CGColorSpace,inputRadius:Double = 10)->UIImage?{ 
		if let filter = CIFilter.bloom(inputIntensity:inputIntensity,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}