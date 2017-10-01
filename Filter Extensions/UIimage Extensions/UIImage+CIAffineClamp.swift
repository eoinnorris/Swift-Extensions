import Foundation

extension UIImage{ 

	func affineClamp(inputTransform:NSAffineTransform)->UIImage?{ 
		if let filter = CIFilter.affineClamp(inputTransform:inputTransform){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}