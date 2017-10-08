import Foundation

extension UIImage{ 
/// Constant Color
///
/// - Parameters
///   - Parameter inputColor: The color to generate.
/// -  Returns: The filtered image or nil
	func constantColorGenerator(inputColor:CIColor)->UIImage?{ 
		if let filter = CIFilter.constantColorGenerator(inputColor:inputColor){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}