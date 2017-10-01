import Foundation

extension UIImage{ 

	func noiseReduction(inputSharpness:CGColorSpace,inputNoiseLevel:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.noiseReduction(inputSharpness:inputSharpness,inputNoiseLevel:inputNoiseLevel){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}