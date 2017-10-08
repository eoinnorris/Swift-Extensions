import Foundation

extension UIImage{ 
/// Source Atop
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	func sourceAtopCompositing(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.sourceAtopCompositing(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}