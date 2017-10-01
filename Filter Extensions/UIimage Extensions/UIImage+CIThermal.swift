import Foundation

extension UIImage{ 

	func thermal()->UIImage?{ 
		if let filter = CIFilter.thermal(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}