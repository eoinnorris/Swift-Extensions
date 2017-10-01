import Foundation

extension CIFilter{ 

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
