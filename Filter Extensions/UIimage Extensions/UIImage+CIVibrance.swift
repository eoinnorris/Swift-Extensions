import Foundation

extension UIImage{ 

	func vibrance(inputAmount:Double = 0)->UIImage?{ 
		if let filter = CIFilter.vibrance(inputAmount:inputAmount){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}