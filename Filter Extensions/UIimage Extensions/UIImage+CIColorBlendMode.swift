import Foundation

extension UIImage{ 

	func colorBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.colorBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}