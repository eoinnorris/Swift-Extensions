import Foundation

extension UIImage{ 

	func photoEffectProcess()->UIImage?{ 
		if let filter = CIFilter.photoEffectProcess(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}