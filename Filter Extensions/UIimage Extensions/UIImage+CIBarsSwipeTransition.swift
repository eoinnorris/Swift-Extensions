import Foundation

extension UIImage{ 

	func barsSwipeTransition(inputTargetImage:CIImage,inputTime:Double = 0,inputAngle:CGColorSpace,inputBarOffset:Double = 10,inputWidth:Double = 30)->UIImage?{ 
		if let filter = CIFilter.barsSwipeTransition(inputTargetImage:inputTargetImage,inputTime:inputTime,inputAngle:inputAngle,inputBarOffset:inputBarOffset,inputWidth:inputWidth){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}