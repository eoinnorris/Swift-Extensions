import Foundation

extension UIImage{ 

	func perspectiveCorrection(inputBottomRight:CIVector,inputBottomLeft:CIVector,inputCrop:Double = 1,inputTopRight:CIVector,inputTopLeft:CIVector)->UIImage?{ 
		if let filter = CIFilter.perspectiveCorrection(inputBottomRight:inputBottomRight,inputBottomLeft:inputBottomLeft,inputCrop:inputCrop,inputTopRight:inputTopRight,inputTopLeft:inputTopLeft){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}