import Foundation

extension UIImage{ 
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
	func spotColor(inputContrast2:CGColorSpace,inputReplacementColor3:CIColor,inputCenterColor1:CIColor,inputCloseness1:CGColorSpace,inputContrast3:CGColorSpace,inputReplacementColor2:CIColor,inputCenterColor2:CIColor,inputReplacementColor1:CIColor,inputCloseness2:CGColorSpace,inputContrast1:CGColorSpace,inputCloseness3:CGColorSpace,inputCenterColor3:CIColor)->UIImage?{ 
		if let filter = CIFilter.spotColor(inputContrast2:inputContrast2,inputReplacementColor3:inputReplacementColor3,inputCenterColor1:inputCenterColor1,inputCloseness1:inputCloseness1,inputContrast3:inputContrast3,inputReplacementColor2:inputReplacementColor2,inputCenterColor2:inputCenterColor2,inputReplacementColor1:inputReplacementColor1,inputCloseness2:inputCloseness2,inputContrast1:inputContrast1,inputCloseness3:inputCloseness3,inputCenterColor3:inputCenterColor3){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}