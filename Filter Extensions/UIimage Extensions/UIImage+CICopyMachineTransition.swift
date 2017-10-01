import Foundation

extension UIImage{ 

	func copyMachineTransition(inputTargetImage:CIImage,inputColor:CIColor,inputExtent:CIVector,inputOpacity:CGColorSpace,inputTime:Double = 0,inputAngle:Double = 0,inputWidth:Double = 200)->UIImage?{ 
		if let filter = CIFilter.copyMachineTransition(inputTargetImage:inputTargetImage,inputColor:inputColor,inputExtent:inputExtent,inputOpacity:inputOpacity,inputTime:inputTime,inputAngle:inputAngle,inputWidth:inputWidth){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}