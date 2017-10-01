import Foundation

extension UIImage{ 

	func kaleidoscope(inputCount:Double = 6,inputCenter:CIVector,inputAngle:Double = 0)->UIImage?{ 
		if let filter = CIFilter.kaleidoscope(inputCount:inputCount,inputCenter:inputCenter,inputAngle:inputAngle){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}