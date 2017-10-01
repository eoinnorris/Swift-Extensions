import Foundation

extension UIImage{ 

	func photoEffectTonal()->UIImage?{ 
		if let filter = CIFilter.photoEffectTonal(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}