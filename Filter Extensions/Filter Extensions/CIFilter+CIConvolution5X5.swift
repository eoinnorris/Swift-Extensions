import Foundation

extension CIFilter{ 
/// 5 by 5 convolution
///
/// - Parameters
///   - Parameter inputBias: 
///   - Parameter inputWeights: 
/// -  Returns: The filtered image or nil
	class func convolution5X5(inputBias:Double = 0,inputWeights:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIConvolution5X5"){ 
			filter.setValue(inputBias, forKey:"inputBias")
			filter.setValue(inputWeights, forKey:"inputWeights")
			result = filter
		}
		return result
	}
}
