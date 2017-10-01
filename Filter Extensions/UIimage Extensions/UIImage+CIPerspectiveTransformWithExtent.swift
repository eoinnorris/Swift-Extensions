import Foundation

extension UIImage{ 

	func perspectiveTransformWithExtent(inputExtent:CIVector,inputBottomRight:CIVector,inputBottomLeft:CIVector,inputTopRight:CIVector,inputTopLeft:CIVector)->UIImage?{ 
		if let filter = CIFilter.perspectiveTransformWithExtent(inputExtent:inputExtent,inputBottomRight:inputBottomRight,inputBottomLeft:inputBottomLeft,inputTopRight:inputTopRight,inputTopLeft:inputTopLeft){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}