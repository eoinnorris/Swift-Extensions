import Foundation

extension UIImage{ 
/// Perspective Transform with Extent
///
/// - Parameters
///   - Parameter inputExtent: A rectangle that defines the extent of the effect.
///   - Parameter inputBottomRight: 
///   - Parameter inputBottomLeft: 
///   - Parameter inputTopRight: 
///   - Parameter inputTopLeft: 
/// -  Returns: The filtered image or nil
	func perspectiveTransformWithExtent(inputExtent:CIVector,inputBottomRight:CIVector,inputBottomLeft:CIVector,inputTopRight:CIVector,inputTopLeft:CIVector)->UIImage?{ 
		if let filter = CIFilter.perspectiveTransformWithExtent(inputExtent:inputExtent,inputBottomRight:inputBottomRight,inputBottomLeft:inputBottomLeft,inputTopRight:inputTopRight,inputTopLeft:inputTopLeft){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}