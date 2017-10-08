import Foundation

extension UIImage{ 
/// Perspective Transform
///
/// - Parameters
///   - Parameter inputBottomRight: The bottom right coordinate to map the image to.
///   - Parameter inputBottomLeft: The bottom left coordinate to map the image to.
///   - Parameter inputTopRight: The top right coordinate to map the image to.
///   - Parameter inputTopLeft: The top left coordinate to map the image to.
/// -  Returns: The filtered image or nil
	func perspectiveTransform(inputBottomRight:CIVector,inputBottomLeft:CIVector,inputTopRight:CIVector,inputTopLeft:CIVector)->UIImage?{ 
		if let filter = CIFilter.perspectiveTransform(inputBottomRight:inputBottomRight,inputBottomLeft:inputBottomLeft,inputTopRight:inputTopRight,inputTopLeft:inputTopLeft){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}