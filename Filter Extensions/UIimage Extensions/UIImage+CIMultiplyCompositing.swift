import Foundation

extension UIImage{ 

	func multiplyCompositing(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.multiplyCompositing(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}