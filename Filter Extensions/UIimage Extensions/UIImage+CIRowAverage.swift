import Foundation

extension UIImage{ 

	func rowAverage(inputExtent:CIVector)->UIImage?{ 
		if let filter = CIFilter.rowAverage(inputExtent:inputExtent){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}