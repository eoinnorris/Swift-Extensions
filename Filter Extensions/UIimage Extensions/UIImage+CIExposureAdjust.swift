import Foundation

extension UIImage{ 

	func exposureAdjust(inputEV:Double = 0)->UIImage?{ 
		if let filter = CIFilter.exposureAdjust(inputEV:inputEV){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}