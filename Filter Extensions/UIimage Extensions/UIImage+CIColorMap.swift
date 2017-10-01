import Foundation

extension UIImage{ 

	func colorMap(inputGradientImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.colorMap(inputGradientImage:inputGradientImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}