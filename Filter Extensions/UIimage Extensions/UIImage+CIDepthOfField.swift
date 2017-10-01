import Foundation

extension UIImage{ 

	func depthOfField(inputUnsharpMaskIntensity:CGColorSpace,inputRadius:Double = 6,inputPoint1:CIVector,inputPoint0:CIVector,inputSaturation:CGColorSpace,inputUnsharpMaskRadius:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.depthOfField(inputUnsharpMaskIntensity:inputUnsharpMaskIntensity,inputRadius:inputRadius,inputPoint1:inputPoint1,inputPoint0:inputPoint0,inputSaturation:inputSaturation,inputUnsharpMaskRadius:inputUnsharpMaskRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}