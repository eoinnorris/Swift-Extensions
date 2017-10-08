import Foundation

extension CIFilter{ 
/// Color Matrix
///
/// - Parameters
///   - Parameter inputBiasVector: A vector that’s added to each color component.
///   - Parameter inputAVector: The amount of alpha to multiply the source color values by.
///   - Parameter inputRVector: The amount of red to multiply the source color values by.
///   - Parameter inputGVector: The amount of green to multiply the source color values by.
///   - Parameter inputBVector: The amount of blue to multiply the source color values by.
/// -  Returns: The filtered image or nil
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
