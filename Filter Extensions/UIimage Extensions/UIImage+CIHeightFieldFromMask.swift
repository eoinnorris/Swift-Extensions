import Foundation

extension UIImage{ 

	func heightFieldFromMask(inputRadius:Double = 10)->UIImage?{ 
		if let filter = CIFilter.heightFieldFromMask(inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}