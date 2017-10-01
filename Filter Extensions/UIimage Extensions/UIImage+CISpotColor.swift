import Foundation

extension UIImage{ 

	func spotColor(inputContrast2:CGColorSpace,inputReplacementColor3:CIColor,inputCenterColor1:CIColor,inputCloseness1:CGColorSpace,inputContrast3:CGColorSpace,inputReplacementColor2:CIColor,inputCenterColor2:CIColor,inputReplacementColor1:CIColor,inputCloseness2:CGColorSpace,inputContrast1:CGColorSpace,inputCloseness3:CGColorSpace,inputCenterColor3:CIColor)->UIImage?{ 
		if let filter = CIFilter.spotColor(inputContrast2:inputContrast2,inputReplacementColor3:inputReplacementColor3,inputCenterColor1:inputCenterColor1,inputCloseness1:inputCloseness1,inputContrast3:inputContrast3,inputReplacementColor2:inputReplacementColor2,inputCenterColor2:inputCenterColor2,inputReplacementColor1:inputReplacementColor1,inputCloseness2:inputCloseness2,inputContrast1:inputContrast1,inputCloseness3:inputCloseness3,inputCenterColor3:inputCenterColor3){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}