import Foundation

extension UIImage{ 

	func unsharpMask(inputIntensity:CGColorSpace,inputRadius:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.unsharpMask(inputIntensity:inputIntensity,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}