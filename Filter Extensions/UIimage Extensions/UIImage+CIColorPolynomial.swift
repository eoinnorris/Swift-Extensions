import Foundation

extension UIImage{ 

	func colorPolynomial(inputGreenCoefficients:CIVector,inputBlueCoefficients:CIVector,inputRedCoefficients:CIVector,inputAlphaCoefficients:CIVector)->UIImage?{ 
		if let filter = CIFilter.colorPolynomial(inputGreenCoefficients:inputGreenCoefficients,inputBlueCoefficients:inputBlueCoefficients,inputRedCoefficients:inputRedCoefficients,inputAlphaCoefficients:inputAlphaCoefficients){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}