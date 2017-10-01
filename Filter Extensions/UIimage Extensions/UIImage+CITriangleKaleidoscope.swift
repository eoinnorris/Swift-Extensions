import Foundation

extension UIImage{ 

	func triangleKaleidoscope(inputRotation:CGColorSpace,inputDecay:CGColorSpace,inputPoint:CIVector,inputSize:Double = 700)->UIImage?{ 
		if let filter = CIFilter.triangleKaleidoscope(inputRotation:inputRotation,inputDecay:inputDecay,inputPoint:inputPoint,inputSize:inputSize){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}