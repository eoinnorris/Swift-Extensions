import Foundation

extension UIImage{ 

	func convolution3X3(inputBias:Double = 0,inputWeights:CIVector)->UIImage?{ 
		if let filter = CIFilter.convolution3X3(inputBias:inputBias,inputWeights:inputWeights){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}