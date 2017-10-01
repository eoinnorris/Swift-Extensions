import Foundation

extension UIImage{ 

	func gloom(inputIntensity:CGColorSpace,inputRadius:Double = 10)->UIImage?{ 
		if let filter = CIFilter.gloom(inputIntensity:inputIntensity,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}