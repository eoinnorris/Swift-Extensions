import Foundation

extension UIImage{ 

	func bloom(inputIntensity:CGColorSpace,inputRadius:Double = 10)->UIImage?{ 
		if let filter = CIFilter.bloom(inputIntensity:inputIntensity,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}