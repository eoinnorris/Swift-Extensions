import Foundation

extension UIImage{ 

	func crop(inputRectangle:CIVector)->UIImage?{ 
		if let filter = CIFilter.crop(inputRectangle:inputRectangle){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}