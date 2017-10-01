import Foundation

extension CIFilter{ 

	class func colorMatrix(inputBiasVector:CIVector,inputAVector:CIVector,inputRVector:CIVector,inputGVector:CIVector,inputBVector:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIColorMatrix"){ 
			filter.setValue(inputBiasVector, forKey:"inputBiasVector")
			filter.setValue(inputAVector, forKey:"inputAVector")
			filter.setValue(inputRVector, forKey:"inputRVector")
			filter.setValue(inputGVector, forKey:"inputGVector")
			filter.setValue(inputBVector, forKey:"inputBVector")
			result = filter
		}
		return result
	}
}
