import Foundation

extension UIImage{ 

	func areaMaximumAlpha(inputExtent:CIVector)->UIImage?{ 
		if let filter = CIFilter.areaMaximumAlpha(inputExtent:inputExtent){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}