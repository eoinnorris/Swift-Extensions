import Foundation

extension UIImage{ 

	func additionCompositing(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.additionCompositing(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}