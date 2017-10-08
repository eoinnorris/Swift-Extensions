import Foundation

extension UIImage{ 
/// Horizontal 9 Convolution
///
/// - Parameters
///   - Parameter inputBias: 
///   - Parameter inputWeights: 
/// -  Returns: The filtered image or nil
	func convolution9Horizontal(inputBias:Double = 0,inputWeights:CIVector)->UIImage?{ 
		if let filter = CIFilter.convolution9Horizontal(inputBias:inputBias,inputWeights:inputWeights){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}