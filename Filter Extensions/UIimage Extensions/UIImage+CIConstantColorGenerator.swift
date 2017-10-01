import Foundation

extension UIImage{ 

	func constantColorGenerator(inputColor:CIColor)->UIImage?{ 
		if let filter = CIFilter.constantColorGenerator(inputColor:inputColor){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}