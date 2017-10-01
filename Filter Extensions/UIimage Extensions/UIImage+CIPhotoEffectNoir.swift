import Foundation

extension UIImage{ 

	func photoEffectNoir()->UIImage?{ 
		if let filter = CIFilter.photoEffectNoir(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}