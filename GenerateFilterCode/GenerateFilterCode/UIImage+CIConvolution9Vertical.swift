import Foundation

extension UIImage{ 
/// Vertical 9 Convolution
///
/// - Parameters
///   - Parameter inputBias: 
///   - Parameter inputWeights: 
/// -  Returns: The filtered image or nil
	func convolution9Vertical(inputBias:Double = 0,inputWeights:CIVector)->UIImage?{ 
		if let filter = CIFilter.convolution9Vertical(inputBias:inputBias,inputWeights:inputWeights){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}