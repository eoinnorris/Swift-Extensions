import Foundation

extension UIImage{ 

	func areaAverage(inputExtent:CIVector)->UIImage?{ 
		if let filter = CIFilter.areaAverage(inputExtent:inputExtent){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}