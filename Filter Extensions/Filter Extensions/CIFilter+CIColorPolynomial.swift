import Foundation

extension CIFilter{ 
/// Color Polynomial
///
/// - Parameters
///   - Parameter inputGreenCoefficients: Polynomial coefficients for green channel
///   - Parameter inputBlueCoefficients: Polynomial coefficients for blue channel
///   - Parameter inputRedCoefficients: Polynomial coefficients for red channel
///   - Parameter inputAlphaCoefficients: Polynomial coefficients for alpha channel
/// -  Returns: The filtered image or nil
	class func colorPolynomial(inputGreenCoefficients:CIVector,inputBlueCoefficients:CIVector,inputRedCoefficients:CIVector,inputAlphaCoefficients:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIColorPolynomial"){ 
			filter.setValue(inputGreenCoefficients, forKey:"inputGreenCoefficients")
			filter.setValue(inputBlueCoefficients, forKey:"inputBlueCoefficients")
			filter.setValue(inputRedCoefficients, forKey:"inputRedCoefficients")
			filter.setValue(inputAlphaCoefficients, forKey:"inputAlphaCoefficients")
			result = filter
		}
		return result
	}
}
