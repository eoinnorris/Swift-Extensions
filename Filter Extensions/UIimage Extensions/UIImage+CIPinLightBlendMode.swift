import Foundation

extension UIImage{ 

	func pinLightBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.pinLightBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}