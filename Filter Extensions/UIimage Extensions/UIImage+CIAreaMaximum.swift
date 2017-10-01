import Foundation

extension UIImage{ 

	func areaMaximum(inputExtent:CIVector)->UIImage?{ 
		if let filter = CIFilter.areaMaximum(inputExtent:inputExtent){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}