import Foundation

extension UIImage{ 

	func sourceOutCompositing(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.sourceOutCompositing(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}