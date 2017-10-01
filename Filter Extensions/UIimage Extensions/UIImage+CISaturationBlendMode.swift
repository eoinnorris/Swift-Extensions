import Foundation

extension UIImage{ 

	func saturationBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.saturationBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}