import Foundation

extension UIImage{ 
/// Affine Clamp
///
/// - Parameters
///   - Parameter inputTransform: The transform to apply to the image.
/// -  Returns: The filtered image or nil
	func affineClamp(inputTransform:CGAffineTransform)->UIImage?{
		if let filter = CIFilter.affineClamp(inputTransform:inputTransform){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
