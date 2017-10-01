import Foundation

extension UIImage{ 

	func colorInvert()->UIImage?{ 
		if let filter = CIFilter.colorInvert(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}