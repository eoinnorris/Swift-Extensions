import Foundation

extension UIImage{ 
/// Morphology Minimum
///
/// - Parameters
///   - Parameter inputRadius: The desired radius of the circular morphological operation to the image.
/// -  Returns: The filtered image or nil
	func morphologyMinimum(inputRadius:Double = 0)->UIImage?{ 
		if let filter = CIFilter.morphologyMinimum(inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}