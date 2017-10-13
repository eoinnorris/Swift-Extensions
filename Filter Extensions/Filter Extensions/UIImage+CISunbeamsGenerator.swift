import Foundation

extension UIImage{ 
/// Sunbeams
///
/// - Parameters
///   - Parameter inputStriationContrast: The contrast of the sunbeams. Higher values result in more contrast.
///   - Parameter inputColor: The color of the sun.
///   - Parameter inputTime: The duration of the effect.
///   - Parameter inputSunRadius: The radius of the sun.
///   - Parameter inputCenter: The x and y position to use as the center of the sunbeam pattern
///   - Parameter inputMaxStriationRadius: The radius of the sunbeams.
///   - Parameter inputStriationStrength: The intensity of the sunbeams. Higher values result in more intensity.
/// -  Returns: The filtered image or nil
	func sunbeamsGenerator(inputStriationContrast:CGColorSpace,inputColor:CIColor,inputTime:Double = 0,inputSunRadius:Double = 40,inputCenter:CIVector,inputMaxStriationRadius:CGColorSpace,inputStriationStrength:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.sunbeamsGenerator(inputStriationContrast:inputStriationContrast,inputColor:inputColor,inputTime:inputTime,inputSunRadius:inputSunRadius,inputCenter:inputCenter,inputMaxStriationRadius:inputMaxStriationRadius,inputStriationStrength:inputStriationStrength){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}