import Foundation

extension CIFilter{ 

	class func convolution7X7(inputBias:Double = 0,inputWeights:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIConvolution7X7"){ 
			filter.setValue(inputBias, forKey:"inputBias")
			filter.setValue(inputWeights, forKey:"inputWeights")
			result = filter
		}
		return result
	}
}
