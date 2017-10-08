import Foundation

extension CIFilter{ 
/// Perspective Transform with Extent
///
/// - Parameters
///   - Parameter inputExtent: A rectangle that defines the extent of the effect.
///   - Parameter inputBottomRight: 
///   - Parameter inputBottomLeft: 
///   - Parameter inputTopRight: 
///   - Parameter inputTopLeft: 
/// -  Returns: The filtered image or nil
	class func perspectiveTransformWithExtent(inputExtent:CIVector,inputBottomRight:CIVector,inputBottomLeft:CIVector,inputTopRight:CIVector,inputTopLeft:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPerspectiveTransformWithExtent"){ 
			filter.setValue(inputExtent, forKey:"inputExtent")
			filter.setValue(inputBottomRight, forKey:"inputBottomRight")
			filter.setValue(inputBottomLeft, forKey:"inputBottomLeft")
			filter.setValue(inputTopRight, forKey:"inputTopRight")
			filter.setValue(inputTopLeft, forKey:"inputTopLeft")
			result = filter
		}
		return result
	}
}
