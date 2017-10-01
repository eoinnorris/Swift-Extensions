import Foundation

extension UIImage{ 

	func subtractBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.subtractBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}