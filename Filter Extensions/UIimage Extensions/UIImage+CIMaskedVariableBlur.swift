import Foundation

extension UIImage{ 

	func maskedVariableBlur(inputMask:CIImage,inputRadius:Double = 5)->UIImage?{ 
		if let filter = CIFilter.maskedVariableBlur(inputMask:inputMask,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}