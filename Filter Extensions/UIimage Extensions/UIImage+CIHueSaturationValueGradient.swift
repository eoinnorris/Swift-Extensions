import Foundation

extension UIImage{ 
/// Hue/Saturation/Value Gradient
///
/// - Parameters
///   - Parameter inputValue: 
///   - Parameter inputColorSpace: The CGColorSpaceRef that the color wheel should be generated in.
///   - Parameter inputSoftness: 
///   - Parameter inputRadius: The distance from the center of the effect.
///   - Parameter inputDither: 
/// -  Returns: The filtered image or nil
	func hueSaturationValueGradient(inputValue:Double = 1,inputColorSpace:CGColorSpace,inputSoftness:Double = 1,inputRadius:Double = 300,inputDither:Double = 1)->UIImage?{ 
		if let filter = CIFilter.hueSaturationValueGradient(inputValue:inputValue,inputColorSpace:inputColorSpace,inputSoftness:inputSoftness,inputRadius:inputRadius,inputDither:inputDither){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}