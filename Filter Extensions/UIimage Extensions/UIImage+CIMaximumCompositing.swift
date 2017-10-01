import Foundation

extension UIImage{ 

	func maximumCompositing(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.maximumCompositing(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}