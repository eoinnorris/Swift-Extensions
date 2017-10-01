import Foundation

extension UIImage{ 

	func edges(inputIntensity:Double = 1)->UIImage?{ 
		if let filter = CIFilter.edges(inputIntensity:inputIntensity){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}