import Foundation

extension UIImage{ 

	func lineOverlay(inputThreshold:CGColorSpace,inputNRSharpness:CGColorSpace,inputNRNoiseLevel:CGColorSpace,inputContrast:Double = 50,inputEdgeIntensity:Double = 1)->UIImage?{ 
		if let filter = CIFilter.lineOverlay(inputThreshold:inputThreshold,inputNRSharpness:inputNRSharpness,inputNRNoiseLevel:inputNRNoiseLevel,inputContrast:inputContrast,inputEdgeIntensity:inputEdgeIntensity){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}