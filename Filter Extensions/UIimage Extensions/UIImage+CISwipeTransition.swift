import Foundation

extension UIImage{ 

	func swipeTransition(inputTargetImage:CIImage,inputColor:CIColor,inputExtent:CIVector,inputOpacity:Double = 0,inputTime:Double = 0,inputAngle:Double = 0,inputWidth:Double = 300)->UIImage?{ 
		if let filter = CIFilter.swipeTransition(inputTargetImage:inputTargetImage,inputColor:inputColor,inputExtent:inputExtent,inputOpacity:inputOpacity,inputTime:inputTime,inputAngle:inputAngle,inputWidth:inputWidth){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}