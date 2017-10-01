import Foundation

extension UIImage{ 

	func Version()->UIImage?{ 
		if let filter = CIFilter.Version(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}