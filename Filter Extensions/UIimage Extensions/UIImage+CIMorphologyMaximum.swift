import Foundation

extension UIImage{ 
/// Morphology Maximum
///
/// - Parameters
///   - Parameter inputRadius: The desired radius of the circular morphological operation to the image.
/// -  Returns: The filtered image or nil
	func morphologyMaximum(inputRadius:Double = 0)->UIImage?{ 
		if let filter = CIFilter.morphologyMaximum(inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}