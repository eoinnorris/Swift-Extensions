import Foundation

extension UIImage{ 
/// Lab ∆E
///
/// - Parameters
///   - Parameter inputImage2: 
/// -  Returns: The filtered image or nil
	func labDeltaE(inputImage2:CIImage)->UIImage?{ 
		if let filter = CIFilter.labDeltaE(inputImage2:inputImage2){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}