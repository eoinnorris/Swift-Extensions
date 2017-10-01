import Foundation

extension UIImage{ 

	func triangleTile(inputCenter:CIVector,inputAngle:Double = 0,inputWidth:Double = 100)->UIImage?{ 
		if let filter = CIFilter.triangleTile(inputCenter:inputCenter,inputAngle:inputAngle,inputWidth:inputWidth){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}