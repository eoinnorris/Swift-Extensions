import Foundation

extension UIImage{ 

	func multiplyBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.multiplyBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}