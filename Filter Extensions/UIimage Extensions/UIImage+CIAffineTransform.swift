import Foundation

extension UIImage{ 
/// Affine Transform
///
/// - Parameters
///   - Parameter inputTransform: A transform to apply to the image.
/// -  Returns: The filtered image or nil
	func affineTransform(inputTransform:CGAffineTransform)->UIImage?{ 
		if let filter = CIFilter.affineTransform(inputTransform:inputTransform){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
