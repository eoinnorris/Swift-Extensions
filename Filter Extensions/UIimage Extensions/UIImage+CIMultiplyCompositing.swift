import Foundation

extension UIImage{ 
/// Multiply
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	func multiplyCompositing(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.multiplyCompositing(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}