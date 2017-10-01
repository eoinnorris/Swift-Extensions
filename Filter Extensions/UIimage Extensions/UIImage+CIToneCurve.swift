import Foundation

extension UIImage{ 

	func toneCurve(inputPoint1:CIVector,inputPoint4:CIVector,inputPoint0:CIVector,inputPoint3:CIVector,inputPoint2:CIVector)->UIImage?{ 
		if let filter = CIFilter.toneCurve(inputPoint1:inputPoint1,inputPoint4:inputPoint4,inputPoint0:inputPoint0,inputPoint3:inputPoint3,inputPoint2:inputPoint2){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}