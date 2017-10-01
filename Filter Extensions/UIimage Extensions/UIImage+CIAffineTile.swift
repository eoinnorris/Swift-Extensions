import Foundation

extension UIImage{ 

	func affineTile(inputTransform:NSAffineTransform)->UIImage?{ 
		if let filter = CIFilter.affineTile(inputTransform:inputTransform){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}