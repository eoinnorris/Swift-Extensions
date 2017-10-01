import Foundation

extension UIImage{ 

	func minimumCompositing(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.minimumCompositing(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}