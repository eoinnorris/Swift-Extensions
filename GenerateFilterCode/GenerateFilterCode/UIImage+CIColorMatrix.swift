import Foundation

extension UIImage{ 
/// Color Matrix
///
/// - Parameters
///   - Parameter inputBiasVector: A vector that’s added to each color component.
///   - Parameter inputAVector: The amount of alpha to multiply the source color values by.
///   - Parameter inputRVector: The amount of red to multiply the source color values by.
///   - Parameter inputGVector: The amount of green to multiply the source color values by.
///   - Parameter inputBVector: The amount of blue to multiply the source color values by.
/// -  Returns: The filtered image or nil
	func colorMatrix(inputBiasVector:CIVector,inputAVector:CIVector,inputRVector:CIVector,inputGVector:CIVector,inputBVector:CIVector)->UIImage?{ 
		if let filter = CIFilter.colorMatrix(inputBiasVector:inputBiasVector,inputAVector:inputAVector,inputRVector:inputRVector,inputGVector:inputGVector,inputBVector:inputBVector){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}