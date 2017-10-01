import Foundation

extension CIFilter{ 

	class func convolution9Vertical(inputBias:Double = 0,inputWeights:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIConvolution9Vertical"){ 
			filter.setValue(inputBias, forKey:"inputBias")
			filter.setValue(inputWeights, forKey:"inputWeights")
			result = filter
		}
		return result
	}
}
