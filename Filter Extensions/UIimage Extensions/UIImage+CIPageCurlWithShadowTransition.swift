import Foundation

extension UIImage{ 

	func pageCurlWithShadowTransition(inputTargetImage:CIImage,inputBacksideImage:CIImage,inputExtent:CIVector,inputShadowAmount:CGColorSpace,inputTime:Double = 0,inputAngle:Double = 0,inputRadius:Double = 100,inputShadowSize:CGColorSpace,inputShadowExtent:CIVector)->UIImage?{ 
		if let filter = CIFilter.pageCurlWithShadowTransition(inputTargetImage:inputTargetImage,inputBacksideImage:inputBacksideImage,inputExtent:inputExtent,inputShadowAmount:inputShadowAmount,inputTime:inputTime,inputAngle:inputAngle,inputRadius:inputRadius,inputShadowSize:inputShadowSize,inputShadowExtent:inputShadowExtent){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}