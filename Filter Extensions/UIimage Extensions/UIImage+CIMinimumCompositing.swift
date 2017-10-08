import Foundation

extension UIImage{ 
/// Minimum
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	func minimumCompositing(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.minimumCompositing(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}