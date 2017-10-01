import Foundation

extension UIImage{ 

	func comicEffect()->UIImage?{ 
		if let filter = CIFilter.comicEffect(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}