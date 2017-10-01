import Foundation

extension UIImage{ 

	func areaMinimumAlpha(inputExtent:CIVector)->UIImage?{ 
		if let filter = CIFilter.areaMinimumAlpha(inputExtent:inputExtent){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}