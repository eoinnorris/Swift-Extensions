import Foundation

extension UIImage{ 

	func bokehBlur(inputSoftness:Double = 1,inputRadius:Double = 20,inputRingAmount:Double = 0,inputRingSize:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.bokehBlur(inputSoftness:inputSoftness,inputRadius:inputRadius,inputRingAmount:inputRingAmount,inputRingSize:inputRingSize){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}