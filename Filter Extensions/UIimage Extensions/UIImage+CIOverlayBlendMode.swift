import Foundation

extension UIImage{ 

	func overlayBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.overlayBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}