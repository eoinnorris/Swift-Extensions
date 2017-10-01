import Foundation

extension UIImage{ 

	func rippleTransition(inputShadingImage:CIImage,inputTargetImage:CIImage,inputExtent:CIVector,inputTime:Double = 0,inputWidth:Double = 100,inputScale:Double = 50,inputCenter:CIVector)->UIImage?{ 
		if let filter = CIFilter.rippleTransition(inputShadingImage:inputShadingImage,inputTargetImage:inputTargetImage,inputExtent:inputExtent,inputTime:inputTime,inputWidth:inputWidth,inputScale:inputScale,inputCenter:inputCenter){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}