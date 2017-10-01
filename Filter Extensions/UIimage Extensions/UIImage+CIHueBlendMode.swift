import Foundation

extension UIImage{ 

	func hueBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.hueBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}