import Foundation

extension UIImage{ 

	func softLightBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.softLightBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}