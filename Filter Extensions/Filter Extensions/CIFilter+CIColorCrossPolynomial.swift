import Cocoa

extension CIFilter{ 

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