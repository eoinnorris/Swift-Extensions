import Foundation

extension UIImage{ 

	func convolution5X5(inputBias:Double = 0,inputWeights:CIVector)->UIImage?{ 
		if let filter = CIFilter.convolution5X5(inputBias:inputBias,inputWeights:inputWeights){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}