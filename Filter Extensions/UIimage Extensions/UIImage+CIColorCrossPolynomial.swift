import Foundation

extension UIImage{ 

	func colorCrossPolynomial(inputGreenCoefficients:CIVector,inputBlueCoefficients:CIVector,inputRedCoefficients:CIVector)->UIImage?{ 
		if let filter = CIFilter.colorCrossPolynomial(inputGreenCoefficients:inputGreenCoefficients,inputBlueCoefficients:inputBlueCoefficients,inputRedCoefficients:inputRedCoefficients){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}