import Foundation

extension UIImage{ 

	func sepiaTone(inputIntensity:Double = 1)->UIImage?{ 
		if let filter = CIFilter.sepiaTone(inputIntensity:inputIntensity){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}