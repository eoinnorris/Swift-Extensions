import Foundation

extension UIImage{ 

	func perspectiveTransform(inputBottomRight:CIVector,inputBottomLeft:CIVector,inputTopRight:CIVector,inputTopLeft:CIVector)->UIImage?{ 
		if let filter = CIFilter.perspectiveTransform(inputBottomRight:inputBottomRight,inputBottomLeft:inputBottomLeft,inputTopRight:inputTopRight,inputTopLeft:inputTopLeft){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}