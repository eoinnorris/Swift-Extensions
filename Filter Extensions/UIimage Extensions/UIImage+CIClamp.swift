import Foundation

extension UIImage{ 

	func clamp(inputExtent:CIVector)->UIImage?{ 
		if let filter = CIFilter.clamp(inputExtent:inputExtent){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}