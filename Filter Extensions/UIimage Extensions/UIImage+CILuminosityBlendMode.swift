import Foundation

extension UIImage{ 

	func luminosityBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.luminosityBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}