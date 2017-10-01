import Foundation

extension UIImage{ 

	func photoEffectTransfer()->UIImage?{ 
		if let filter = CIFilter.photoEffectTransfer(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}