import Foundation

extension UIImage{ 

	func edgeWork(inputRadius:Double = 3)->UIImage?{ 
		if let filter = CIFilter.edgeWork(inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}