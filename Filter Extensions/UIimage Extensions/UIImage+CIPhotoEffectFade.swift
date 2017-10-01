import Foundation

extension UIImage{ 

	func photoEffectFade()->UIImage?{ 
		if let filter = CIFilter.photoEffectFade(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}