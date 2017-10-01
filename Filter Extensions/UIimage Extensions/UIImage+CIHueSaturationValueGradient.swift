import Foundation

extension UIImage{ 

	func hueSaturationValueGradient(inputValue:Double = 1,inputColorSpace:CGColorSpace,inputSoftness:Double = 1,inputRadius:Double = 300,inputDither:Double = 1)->UIImage?{ 
		if let filter = CIFilter.hueSaturationValueGradient(inputValue:inputValue,inputColorSpace:inputColorSpace,inputSoftness:inputSoftness,inputRadius:inputRadius,inputDither:inputDither){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}