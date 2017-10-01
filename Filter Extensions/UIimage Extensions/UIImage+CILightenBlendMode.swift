import Foundation

extension UIImage{ 

	func lightenBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.lightenBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}