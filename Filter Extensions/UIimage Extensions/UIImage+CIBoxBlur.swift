import Foundation

extension UIImage{ 

	func boxBlur(inputRadius:Double = 10)->UIImage?{ 
		if let filter = CIFilter.boxBlur(inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}