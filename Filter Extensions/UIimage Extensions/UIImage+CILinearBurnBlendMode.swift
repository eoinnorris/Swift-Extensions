import Foundation

extension UIImage{ 

	func linearBurnBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.linearBurnBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}