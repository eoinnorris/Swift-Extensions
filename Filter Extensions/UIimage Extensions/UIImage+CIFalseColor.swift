import Foundation

extension UIImage{ 
/// False Color
///
/// - Parameters
///   - Parameter inputColor0: The first color to use for the color ramp.
///   - Parameter inputColor1: The second color to use for the color ramp.
/// -  Returns: The filtered image or nil
	func falseColor(inputColor0:CIColor,inputColor1:CIColor)->UIImage?{ 
		if let filter = CIFilter.falseColor(inputColor0:inputColor0,inputColor1:inputColor1){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}