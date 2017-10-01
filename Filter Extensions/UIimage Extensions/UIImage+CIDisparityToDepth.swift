import Foundation

extension UIImage{ 

	func disparityToDepth()->UIImage?{ 
		if let filter = CIFilter.disparityToDepth(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}