import Foundation

extension UIImage{ 

	func gaussianBlur(inputRadius:Double = 10)->UIImage?{ 
		if let filter = CIFilter.gaussianBlur(inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}