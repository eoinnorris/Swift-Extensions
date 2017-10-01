import Foundation

extension UIImage{ 

	func areaMinMaxRed(inputExtent:CIVector)->UIImage?{ 
		if let filter = CIFilter.areaMinMaxRed(inputExtent:inputExtent){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}