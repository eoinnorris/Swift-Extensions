import Foundation

extension UIImage{ 

	func divideBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.divideBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}