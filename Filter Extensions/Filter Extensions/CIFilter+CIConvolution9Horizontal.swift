import Foundation

extension CIFilter{ 
/// Horizontal 9 Convolution
///
/// - Parameters
///   - Parameter inputBias: 
///   - Parameter inputWeights: 
/// -  Returns: The filtered image or nil
	class func convolution9Horizontal(inputBias:Double = 0,inputWeights:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIConvolution9Horizontal"){ 
			filter.setValue(inputBias, forKey:"inputBias")
			filter.setValue(inputWeights, forKey:"inputWeights")
			result = filter
		}
		return result
	}
}
