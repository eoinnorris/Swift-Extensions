import Foundation

extension UIImage{ 
/// Morphology Gradient
///
/// - Parameters
///   - Parameter inputRadius: The desired radius of the circular morphological operation to the image.
/// -  Returns: The filtered image or nil
	func morphologyGradient(inputRadius:Double = 5)->UIImage?{ 
		if let filter = CIFilter.morphologyGradient(inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}