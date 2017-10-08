import Foundation

extension UIImage{ 
/// Affine Tile
///
/// - Parameters
///   - Parameter inputTransform: The transform to apply to the image.
/// -  Returns: The filtered image or nil
	func affineTile(inputTransform:CGAffineTransform)->UIImage?{ 
		if let filter = CIFilter.affineTile(inputTransform:inputTransform){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
