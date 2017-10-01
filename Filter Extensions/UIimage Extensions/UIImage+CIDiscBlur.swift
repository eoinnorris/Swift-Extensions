import Foundation

extension UIImage{ 

	func discBlur(inputRadius:Double = 8)->UIImage?{ 
		if let filter = CIFilter.discBlur(inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}