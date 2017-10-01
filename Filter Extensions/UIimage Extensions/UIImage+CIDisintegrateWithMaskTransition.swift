import Foundation

extension UIImage{ 

	func disintegrateWithMaskTransition(inputMaskImage:CIImage,inputTargetImage:CIImage,inputShadowRadius:Double = 8,inputTime:Double = 0,inputShadowOffset:CIVector,inputShadowDensity:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.disintegrateWithMaskTransition(inputMaskImage:inputMaskImage,inputTargetImage:inputTargetImage,inputShadowRadius:inputShadowRadius,inputTime:inputTime,inputShadowOffset:inputShadowOffset,inputShadowDensity:inputShadowDensity){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}