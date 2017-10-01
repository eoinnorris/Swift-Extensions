import Foundation

extension UIImage{ 

	func colorBurnBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.colorBurnBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}