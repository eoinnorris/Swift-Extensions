import Foundation

extension UIImage{ 

	func colorDodgeBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.colorDodgeBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}