import Foundation

extension UIImage{ 

	func falseColor(inputColor0:CIColor,inputColor1:CIColor)->UIImage?{ 
		if let filter = CIFilter.falseColor(inputColor0:inputColor0,inputColor1:inputColor1){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}