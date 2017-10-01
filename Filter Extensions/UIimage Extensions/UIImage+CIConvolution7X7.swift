import Foundation

extension UIImage{ 

	func convolution7X7(inputBias:Double = 0,inputWeights:CIVector)->UIImage?{ 
		if let filter = CIFilter.convolution7X7(inputBias:inputBias,inputWeights:inputWeights){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}