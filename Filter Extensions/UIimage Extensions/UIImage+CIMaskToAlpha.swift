import Foundation

extension UIImage{ 

	func maskToAlpha()->UIImage?{ 
		if let filter = CIFilter.maskToAlpha(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}