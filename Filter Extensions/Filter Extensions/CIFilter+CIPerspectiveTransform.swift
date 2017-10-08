import Foundation

extension CIFilter{ 
/// Perspective Transform
///
/// - Parameters
///   - Parameter inputBottomRight: The bottom right coordinate to map the image to.
///   - Parameter inputBottomLeft: The bottom left coordinate to map the image to.
///   - Parameter inputTopRight: The top right coordinate to map the image to.
///   - Parameter inputTopLeft: The top left coordinate to map the image to.
/// -  Returns: The filtered image or nil
	class func perspectiveTransform(inputBottomRight:CIVector,inputBottomLeft:CIVector,inputTopRight:CIVector,inputTopLeft:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPerspectiveTransform"){ 
			filter.setValue(inputBottomRight, forKey:"inputBottomRight")
			filter.setValue(inputBottomLeft, forKey:"inputBottomLeft")
			filter.setValue(inputTopRight, forKey:"inputTopRight")
			filter.setValue(inputTopLeft, forKey:"inputTopLeft")
			result = filter
		}
		return result
	}
}
