import Foundation

extension UIImage{ 

	func sourceOverCompositing(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.sourceOverCompositing(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}