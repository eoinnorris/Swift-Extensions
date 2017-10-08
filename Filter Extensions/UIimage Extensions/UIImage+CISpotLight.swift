import Foundation

extension UIImage{ 
/// Spot Light
///
/// - Parameters
///   - Parameter inputColor: The color of the spotlight.
///   - Parameter inputLightPointsAt: The x and y position that the spotlight points at.
///   - Parameter inputConcentration: The spotlight size. The smaller the value, the more tightly focused the light beam.
///   - Parameter inputLightPosition: The x and y position of the spotlight.
///   - Parameter inputBrightness: The brightness of the spotlight.
/// -  Returns: The filtered image or nil
	func spotLight(inputColor:CIColor,inputLightPointsAt:CIVector,inputConcentration:CGColorSpace,inputLightPosition:CIVector,inputBrightness:Double = 3)->UIImage?{ 
		if let filter = CIFilter.spotLight(inputColor:inputColor,inputLightPointsAt:inputLightPointsAt,inputConcentration:inputConcentration,inputLightPosition:inputLightPosition,inputBrightness:inputBrightness){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}