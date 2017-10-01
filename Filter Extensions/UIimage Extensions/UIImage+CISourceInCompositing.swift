import Foundation

extension UIImage{ 

	func sourceInCompositing(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.sourceInCompositing(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}