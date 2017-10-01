import Foundation

extension UIImage{ 

	func spotLight(inputColor:CIColor,inputLightPointsAt:CIVector,inputConcentration:CGColorSpace,inputLightPosition:CIVector,inputBrightness:Double = 3)->UIImage?{ 
		if let filter = CIFilter.spotLight(inputColor:inputColor,inputLightPointsAt:inputLightPointsAt,inputConcentration:inputConcentration,inputLightPosition:inputLightPosition,inputBrightness:inputBrightness){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}