import Cocoa

extension CIFilter{ 

	class func convolution3X3(inputBias:Double = 0,inputWeights:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIConvolution3X3"){ 
			filter.setValue(inputBias, forKey:"inputBias")
			filter.setValue(inputWeights, forKey:"inputWeights")
			result = filter
		}
		return result
	}
}