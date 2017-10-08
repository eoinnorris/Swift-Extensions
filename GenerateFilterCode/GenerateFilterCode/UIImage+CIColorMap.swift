import Foundation

extension UIImage{ 
/// Color Map
///
/// - Parameters
///   - Parameter inputGradientImage: The image data from this image transforms the source image values.
/// -  Returns: The filtered image or nil
	func colorMap(inputGradientImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.colorMap(inputGradientImage:inputGradientImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}