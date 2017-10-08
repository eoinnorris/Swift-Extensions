import Foundation

extension UIImage{ 
/// Depth of Field
///
/// - Parameters
///   - Parameter inputUnsharpMaskIntensity: 
///   - Parameter inputRadius: The distance from the center of the effect.
///   - Parameter inputPoint1: 
///   - Parameter inputPoint0: 
///   - Parameter inputSaturation: The amount to adjust the saturation.
///   - Parameter inputUnsharpMaskRadius: 
/// -  Returns: The filtered image or nil
	func depthOfField(inputUnsharpMaskIntensity:CGColorSpace,inputRadius:Double = 6,inputPoint1:CIVector,inputPoint0:CIVector,inputSaturation:CGColorSpace,inputUnsharpMaskRadius:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.depthOfField(inputUnsharpMaskIntensity:inputUnsharpMaskIntensity,inputRadius:inputRadius,inputPoint1:inputPoint1,inputPoint0:inputPoint0,inputSaturation:inputSaturation,inputUnsharpMaskRadius:inputUnsharpMaskRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}