import Foundation

extension UIImage{ 

	func hueAdjust(inputAngle:Double = 0)->UIImage?{ 
		if let filter = CIFilter.hueAdjust(inputAngle:inputAngle){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}