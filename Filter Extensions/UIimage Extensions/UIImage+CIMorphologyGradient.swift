import Foundation

extension UIImage{ 

	func morphologyGradient(inputRadius:Double = 5)->UIImage?{ 
		if let filter = CIFilter.morphologyGradient(inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}