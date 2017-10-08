import Foundation

extension UIImage{ 
/// Color Cross Polynomial
///
/// - Parameters
///   - Parameter inputGreenCoefficients: Polynomial coefficients for green channel
///   - Parameter inputBlueCoefficients: Polynomial coefficients for blue channel
///   - Parameter inputRedCoefficients: Polynomial coefficients for red channel
/// -  Returns: The filtered image or nil
	func colorCrossPolynomial(inputGreenCoefficients:CIVector,inputBlueCoefficients:CIVector,inputRedCoefficients:CIVector)->UIImage?{ 
		if let filter = CIFilter.colorCrossPolynomial(inputGreenCoefficients:inputGreenCoefficients,inputBlueCoefficients:inputBlueCoefficients,inputRedCoefficients:inputRedCoefficients){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}