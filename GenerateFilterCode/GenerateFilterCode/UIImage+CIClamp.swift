import Foundation

extension UIImage{ 
/// Clamp
///
/// - Parameters
///   - Parameter inputExtent: A rectangle that defines the extent of the effect.
/// -  Returns: The filtered image or nil
	func clamp(inputExtent:CIVector)->UIImage?{ 
		if let filter = CIFilter.clamp(inputExtent:inputExtent){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}