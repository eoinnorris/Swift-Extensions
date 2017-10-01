import Foundation

extension UIImage{ 

	func areaMinimum(inputExtent:CIVector)->UIImage?{ 
		if let filter = CIFilter.areaMinimum(inputExtent:inputExtent){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}