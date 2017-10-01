import Foundation

extension UIImage{ 

	func dissolveTransition(inputTargetImage:CIImage,inputTime:Double = 0)->UIImage?{ 
		if let filter = CIFilter.dissolveTransition(inputTargetImage:inputTargetImage,inputTime:inputTime){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}