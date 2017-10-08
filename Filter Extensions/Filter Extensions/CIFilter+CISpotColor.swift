import Foundation

extension CIFilter{ 
/// Spot Color
///
/// - Parameters
///   - Parameter inputContrast2: The contrast of the second replacement color.
///   - Parameter inputReplacementColor3: A replacement color for the third color range.
///   - Parameter inputCenterColor1: The center value of the first color range to replace.
///   - Parameter inputCloseness1: A value that indicates how close the first color must match before it is replaced.
///   - Parameter inputContrast3: The contrast of the third replacement color.
///   - Parameter inputReplacementColor2: A replacement color for the second color range.
///   - Parameter inputCenterColor2: The center value of the second color range to replace.
///   - Parameter inputReplacementColor1: A replacement color for the first color range.
///   - Parameter inputCloseness2: A value that indicates how close the second color must match before it is replaced.
///   - Parameter inputContrast1: The contrast of the first replacement color.
///   - Parameter inputCloseness3: A value that indicates how close the third color must match before it is replaced.
///   - Parameter inputCenterColor3: The center value of the third color range to replace.
/// -  Returns: The filtered image or nil
	class func spotColor(inputContrast2:CGColorSpace,inputReplacementColor3:CIColor,inputCenterColor1:CIColor,inputCloseness1:CGColorSpace,inputContrast3:CGColorSpace,inputReplacementColor2:CIColor,inputCenterColor2:CIColor,inputReplacementColor1:CIColor,inputCloseness2:CGColorSpace,inputContrast1:CGColorSpace,inputCloseness3:CGColorSpace,inputCenterColor3:CIColor)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CISpotColor"){ 
			filter.setValue(inputContrast2, forKey:"inputContrast2")
			filter.setValue(inputReplacementColor3, forKey:"inputReplacementColor3")
			filter.setValue(inputCenterColor1, forKey:"inputCenterColor1")
			filter.setValue(inputCloseness1, forKey:"inputCloseness1")
			filter.setValue(inputContrast3, forKey:"inputContrast3")
			filter.setValue(inputReplacementColor2, forKey:"inputReplacementColor2")
			filter.setValue(inputCenterColor2, forKey:"inputCenterColor2")
			filter.setValue(inputReplacementColor1, forKey:"inputReplacementColor1")
			filter.setValue(inputCloseness2, forKey:"inputCloseness2")
			filter.setValue(inputContrast1, forKey:"inputContrast1")
			filter.setValue(inputCloseness3, forKey:"inputCloseness3")
			filter.setValue(inputCenterColor3, forKey:"inputCenterColor3")
			result = filter
		}
		return result
	}
}
