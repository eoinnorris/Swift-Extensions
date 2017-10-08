import Foundation

extension UIImage{ 
/// Disc Blur
///
/// - Parameters
///   - Parameter inputRadius: The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.
/// -  Returns: The filtered image or nil
	func discBlur(inputRadius:Double = 8)->UIImage?{ 
		if let filter = CIFilter.discBlur(inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}