import Foundation

extension UIImage{ 

	func morphologyMaximum(inputRadius:Double = 0)->UIImage?{ 
		if let filter = CIFilter.morphologyMaximum(inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}