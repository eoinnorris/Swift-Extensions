import Foundation

extension UIImage{ 

	func lenticularHaloGenerator(inputStriationContrast:Double = 1,inputColor:CIColor,inputTime:Double = 0,inputHaloRadius:Double = 70,inputCenter:CIVector,inputHaloOverlap:CGColorSpace,inputStriationStrength:CGColorSpace,inputHaloWidth:Double = 87)->UIImage?{ 
		if let filter = CIFilter.lenticularHaloGenerator(inputStriationContrast:inputStriationContrast,inputColor:inputColor,inputTime:inputTime,inputHaloRadius:inputHaloRadius,inputCenter:inputCenter,inputHaloOverlap:inputHaloOverlap,inputStriationStrength:inputStriationStrength,inputHaloWidth:inputHaloWidth){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}