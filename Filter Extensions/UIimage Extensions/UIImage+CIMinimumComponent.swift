import Foundation

extension UIImage{ 

	func minimumComponent()->UIImage?{ 
		if let filter = CIFilter.minimumComponent(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}