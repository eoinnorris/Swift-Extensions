import Foundation

extension UIImage{ 

	func affineTransform(inputTransform:NSAffineTransform)->UIImage?{ 
		if let filter = CIFilter.affineTransform(inputTransform:inputTransform){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}