import Foundation

extension UIImage{ 
/// Color Polynomial
///
/// - Parameters
///   - Parameter inputGreenCoefficients: Polynomial coefficients for green channel
///   - Parameter inputBlueCoefficients: Polynomial coefficients for blue channel
///   - Parameter inputRedCoefficients: Polynomial coefficients for red channel
///   - Parameter inputAlphaCoefficients: Polynomial coefficients for alpha channel
/// -  Returns: The filtered image or nil
	func colorPolynomial(inputGreenCoefficients:CIVector,inputBlueCoefficients:CIVector,inputRedCoefficients:CIVector,inputAlphaCoefficients:CIVector)->UIImage?{ 
		if let filter = CIFilter.colorPolynomial(inputGreenCoefficients:inputGreenCoefficients,inputBlueCoefficients:inputBlueCoefficients,inputRedCoefficients:inputRedCoefficients,inputAlphaCoefficients:inputAlphaCoefficients){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}