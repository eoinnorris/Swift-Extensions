import Foundation

extension UIImage{ 

	func morphologyMinimum(inputRadius:Double = 0)->UIImage?{ 
		if let filter = CIFilter.morphologyMinimum(inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}