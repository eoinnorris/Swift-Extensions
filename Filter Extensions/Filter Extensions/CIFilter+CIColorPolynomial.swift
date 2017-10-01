import Foundation

extension CIFilter{ 

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
