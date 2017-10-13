import Foundation

extension UIImage{ 
/// Unsharp Mask
///
/// - Parameters
///   - Parameter inputIntensity: The intensity of the effect. The larger the value, the more contrast in the affected area.
///   - Parameter inputRadius: The radius around a given pixel to apply the unsharp mask. The larger the radius, the more of the image is affected.
/// -  Returns: The filtered image or nil
	func unsharpMask(inputIntensity:CGColorSpace,inputRadius:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.unsharpMask(inputIntensity:inputIntensity,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}