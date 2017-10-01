import Foundation

extension UIImage{ 

	func modTransition(inputTargetImage:CIImage,inputTime:Double = 0,inputAngle:Double = 2,inputCompression:Double = 300,inputRadius:Double = 150,inputCenter:CIVector)->UIImage?{ 
		if let filter = CIFilter.modTransition(inputTargetImage:inputTargetImage,inputTime:inputTime,inputAngle:inputAngle,inputCompression:inputCompression,inputRadius:inputRadius,inputCenter:inputCenter){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}