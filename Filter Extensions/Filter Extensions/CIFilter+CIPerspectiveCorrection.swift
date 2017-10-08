import Foundation

extension CIFilter{ 
/// Perspective Correction
///
/// - Parameters
///   - Parameter inputBottomRight: The bottom right coordinate to be perspective corrected.
///   - Parameter inputBottomLeft: The bottom left coordinate to be perspective corrected.
///   - Parameter inputCrop: 
///   - Parameter inputTopRight: The top right coordinate to be perspective corrected.
///   - Parameter inputTopLeft: The top left coordinate to be perspective corrected.
/// -  Returns: The filtered image or nil
	class func perspectiveCorrection(inputBottomRight:CIVector,inputBottomLeft:CIVector,inputCrop:Double = 1,inputTopRight:CIVector,inputTopLeft:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPerspectiveCorrection"){ 
			filter.setValue(inputBottomRight, forKey:"inputBottomRight")
			filter.setValue(inputBottomLeft, forKey:"inputBottomLeft")
			filter.setValue(inputCrop, forKey:"inputCrop")
			filter.setValue(inputTopRight, forKey:"inputTopRight")
			filter.setValue(inputTopLeft, forKey:"inputTopLeft")
			result = filter
		}
		return result
	}
}
