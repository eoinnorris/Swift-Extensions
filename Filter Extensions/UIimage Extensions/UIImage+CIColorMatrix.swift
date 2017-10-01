import Foundation

extension UIImage{ 

	func colorMatrix(inputBiasVector:CIVector,inputAVector:CIVector,inputRVector:CIVector,inputGVector:CIVector,inputBVector:CIVector)->UIImage?{ 
		if let filter = CIFilter.colorMatrix(inputBiasVector:inputBiasVector,inputAVector:inputAVector,inputRVector:inputRVector,inputGVector:inputGVector,inputBVector:inputBVector){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}