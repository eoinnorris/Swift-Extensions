import Foundation

extension UIImage{ 

	func vignette(inputIntensity:Double = 0,inputRadius:Double = 1)->UIImage?{ 
		if let filter = CIFilter.vignette(inputIntensity:inputIntensity,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}