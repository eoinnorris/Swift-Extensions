import Foundation

extension UIImage{ 

	func columnAverage(inputExtent:CIVector)->UIImage?{ 
		if let filter = CIFilter.columnAverage(inputExtent:inputExtent){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}