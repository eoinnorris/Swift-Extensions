import Foundation

extension UIImage{ 

	func screenBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.screenBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}