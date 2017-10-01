import Foundation

extension UIImage{ 

	func smoothLinearGradient(inputColor0:CIColor,inputPoint1:CIVector,inputPoint0:CIVector,inputColor1:CIColor)->UIImage?{ 
		if let filter = CIFilter.smoothLinearGradient(inputColor0:inputColor0,inputPoint1:inputPoint1,inputPoint0:inputPoint0,inputColor1:inputColor1){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}