import Foundation

extension UIImage{ 

	func photoEffectMono()->UIImage?{ 
		if let filter = CIFilter.photoEffectMono(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}