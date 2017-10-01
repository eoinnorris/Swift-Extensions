import Foundation

extension UIImage{ 

	func perspectiveTile(inputBottomRight:CIVector,inputBottomLeft:CIVector,inputTopRight:CIVector,inputTopLeft:CIVector)->UIImage?{ 
		if let filter = CIFilter.perspectiveTile(inputBottomRight:inputBottomRight,inputBottomLeft:inputBottomLeft,inputTopRight:inputTopRight,inputTopLeft:inputTopLeft){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}