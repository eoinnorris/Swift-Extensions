import Foundation

extension UIImage{ 

	func colorPosterize(inputLevels:Double = 6)->UIImage?{ 
		if let filter = CIFilter.colorPosterize(inputLevels:inputLevels){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}