import Foundation

extension UIImage{ 

	func linearDodgeBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.linearDodgeBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}