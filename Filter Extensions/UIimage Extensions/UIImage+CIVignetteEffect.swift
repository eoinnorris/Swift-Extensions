import Foundation

extension UIImage{ 

	func vignetteEffect(inputCenter:CIVector,inputIntensity:Double = 1,inputRadius:Double = 150,inputFalloff:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.vignetteEffect(inputCenter:inputCenter,inputIntensity:inputIntensity,inputRadius:inputRadius,inputFalloff:inputFalloff){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}