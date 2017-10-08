import Foundation

extension UIImage{ 
/// Addition
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	func additionCompositing(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.additionCompositing(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}