import Foundation

extension UIImage{ 

	func motionBlur(inputAngle:Double = 0,inputRadius:Double = 20)->UIImage?{ 
		if let filter = CIFilter.motionBlur(inputAngle:inputAngle,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}