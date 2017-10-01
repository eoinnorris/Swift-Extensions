import Foundation

extension UIImage{ 

	func darkenBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.darkenBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}