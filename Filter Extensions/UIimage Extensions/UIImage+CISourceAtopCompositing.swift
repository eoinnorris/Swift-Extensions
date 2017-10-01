import Foundation

extension UIImage{ 

	func sourceAtopCompositing(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.sourceAtopCompositing(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}