import Foundation

extension UIImage{ 

	func pageCurlTransition(inputShadingImage:CIImage,inputTargetImage:CIImage,inputBacksideImage:CIImage,inputExtent:CIVector,inputTime:Double = 0,inputAngle:Double = 0,inputRadius:Double = 100)->UIImage?{ 
		if let filter = CIFilter.pageCurlTransition(inputShadingImage:inputShadingImage,inputTargetImage:inputTargetImage,inputBacksideImage:inputBacksideImage,inputExtent:inputExtent,inputTime:inputTime,inputAngle:inputAngle,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}