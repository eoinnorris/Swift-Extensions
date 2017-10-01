import Foundation

extension UIImage{ 

	func hardLightBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.hardLightBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}