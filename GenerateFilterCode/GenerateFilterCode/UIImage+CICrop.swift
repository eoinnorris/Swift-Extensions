import Foundation

extension UIImage{ 
/// Crop
///
/// - Parameters
///   - Parameter inputRectangle: The rectangle that specifies the crop to apply to the image.
/// -  Returns: The filtered image or nil
	func crop(inputRectangle:CIVector)->UIImage?{ 
		if let filter = CIFilter.crop(inputRectangle:inputRectangle){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}