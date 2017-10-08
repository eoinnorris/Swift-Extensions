import Foundation

extension UIImage{ 
/// Perspective Correction
///
/// - Parameters
///   - Parameter inputBottomRight: The bottom right coordinate to be perspective corrected.
///   - Parameter inputBottomLeft: The bottom left coordinate to be perspective corrected.
///   - Parameter inputCrop: 
///   - Parameter inputTopRight: The top right coordinate to be perspective corrected.
///   - Parameter inputTopLeft: The top left coordinate to be perspective corrected.
/// -  Returns: The filtered image or nil
	func perspectiveCorrection(inputBottomRight:CIVector,inputBottomLeft:CIVector,inputCrop:Double = 1,inputTopRight:CIVector,inputTopLeft:CIVector)->UIImage?{ 
		if let filter = CIFilter.perspectiveCorrection(inputBottomRight:inputBottomRight,inputBottomLeft:inputBottomLeft,inputCrop:inputCrop,inputTopRight:inputTopRight,inputTopLeft:inputTopLeft){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}