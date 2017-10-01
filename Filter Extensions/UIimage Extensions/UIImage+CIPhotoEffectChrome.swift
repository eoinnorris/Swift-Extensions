import Foundation

extension UIImage{ 

	func photoEffectChrome()->UIImage?{ 
		if let filter = CIFilter.photoEffectChrome(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}