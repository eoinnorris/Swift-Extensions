import Foundation

extension UIImage{ 

	func gaussianGradient(inputCenter:CIVector,inputColor0:CIColor,inputRadius:Double = 300,inputColor1:CIColor)->UIImage?{ 
		if let filter = CIFilter.gaussianGradient(inputCenter:inputCenter,inputColor0:inputColor0,inputRadius:inputRadius,inputColor1:inputColor1){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}