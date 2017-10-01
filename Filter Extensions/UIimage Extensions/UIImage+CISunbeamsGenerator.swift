import Foundation

extension UIImage{ 

	func sunbeamsGenerator(inputStriationContrast:CGColorSpace,inputColor:CIColor,inputTime:Double = 0,inputSunRadius:Double = 40,inputCenter:CIVector,inputMaxStriationRadius:CGColorSpace,inputStriationStrength:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.sunbeamsGenerator(inputStriationContrast:inputStriationContrast,inputColor:inputColor,inputTime:inputTime,inputSunRadius:inputSunRadius,inputCenter:inputCenter,inputMaxStriationRadius:inputMaxStriationRadius,inputStriationStrength:inputStriationStrength){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}