import Foundation

extension CIFilter{ 
/// Color Cross Polynomial
///
/// - Parameters
///   - Parameter inputGreenCoefficients: Polynomial coefficients for green channel
///   - Parameter inputBlueCoefficients: Polynomial coefficients for blue channel
///   - Parameter inputRedCoefficients: Polynomial coefficients for red channel
/// -  Returns: The filtered image or nil
	class func colorCrossPolynomial(inputGreenCoefficients:CIVector,inputBlueCoefficients:CIVector,inputRedCoefficients:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIColorCrossPolynomial"){ 
			filter.setValue(inputGreenCoefficients, forKey:"inputGreenCoefficients")
			filter.setValue(inputBlueCoefficients, forKey:"inputBlueCoefficients")
			filter.setValue(inputRedCoefficients, forKey:"inputRedCoefficients")
			result = filter
		}
		return result
	}
}
