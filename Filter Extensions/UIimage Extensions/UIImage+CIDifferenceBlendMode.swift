import Foundation

extension UIImage{ 

	func differenceBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.differenceBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}