import Foundation

extension UIImage{ 

	func exclusionBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.exclusionBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}