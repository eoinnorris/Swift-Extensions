import Foundation

extension UIImage{ 

	func radialGradient(inputCenter:CIVector,inputColor0:CIColor,inputRadius1:Double = 100,inputRadius0:Double = 5,inputColor1:CIColor)->UIImage?{ 
		if let filter = CIFilter.radialGradient(inputCenter:inputCenter,inputColor0:inputColor0,inputRadius1:inputRadius1,inputRadius0:inputRadius0,inputColor1:inputColor1){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}