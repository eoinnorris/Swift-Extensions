import Foundation

extension UIImage{ 
/// Lenticular Halo
///
/// - Parameters
///   - Parameter inputStriationContrast: The contrast of the halo colors. Larger values are higher contrast.
///   - Parameter inputColor: A color.
///   - Parameter inputTime: The duration of the effect.
///   - Parameter inputHaloRadius: The radius of the halo.
///   - Parameter inputCenter: The x and y position to use as the center of the halo.
///   - Parameter inputHaloOverlap: 
///   - Parameter inputStriationStrength: The intensity of the halo colors. Larger values are more intense.
///   - Parameter inputHaloWidth: The width of the halo, from its inner radius to its outer radius.
/// -  Returns: The filtered image or nil
	func lenticularHaloGenerator(inputStriationContrast:Double = 1,inputColor:CIColor,inputTime:Double = 0,inputHaloRadius:Double = 70,inputCenter:CIVector,inputHaloOverlap:CGColorSpace,inputStriationStrength:CGColorSpace,inputHaloWidth:Double = 87)->UIImage?{ 
		if let filter = CIFilter.lenticularHaloGenerator(inputStriationContrast:inputStriationContrast,inputColor:inputColor,inputTime:inputTime,inputHaloRadius:inputHaloRadius,inputCenter:inputCenter,inputHaloOverlap:inputHaloOverlap,inputStriationStrength:inputStriationStrength,inputHaloWidth:inputHaloWidth){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}