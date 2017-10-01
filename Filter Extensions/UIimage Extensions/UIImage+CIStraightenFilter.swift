import Foundation

extension UIImage{ 

	func straightenFilter(inputAngle:Double = 0)->UIImage?{ 
		if let filter = CIFilter.straightenFilter(inputAngle:inputAngle){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}