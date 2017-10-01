import Foundation

extension CIFilter{ 

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
