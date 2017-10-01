import Foundation

extension UIImage{ 

	func maximumComponent()->UIImage?{ 
		if let filter = CIFilter.maximumComponent(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}