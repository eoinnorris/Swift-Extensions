import Foundation

extension UIImage{ 

	func photoEffectInstant()->UIImage?{ 
		if let filter = CIFilter.photoEffectInstant(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}