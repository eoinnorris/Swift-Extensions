import Foundation

extension UIImage{ 

	func flashTransition(inputTargetImage:CIImage,inputStriationContrast:CGColorSpace,inputColor:CIColor,inputExtent:CIVector,inputTime:Double = 0,inputCenter:CIVector,inputMaxStriationRadius:CGColorSpace,inputFadeThreshold:CGColorSpace,inputStriationStrength:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.flashTransition(inputTargetImage:inputTargetImage,inputStriationContrast:inputStriationContrast,inputColor:inputColor,inputExtent:inputExtent,inputTime:inputTime,inputCenter:inputCenter,inputMaxStriationRadius:inputMaxStriationRadius,inputFadeThreshold:inputFadeThreshold,inputStriationStrength:inputStriationStrength){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}