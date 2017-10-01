import Foundation

extension UIImage{ 

	func whitePointAdjust(inputColor:CIColor)->UIImage?{ 
		if let filter = CIFilter.whitePointAdjust(inputColor:inputColor){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}