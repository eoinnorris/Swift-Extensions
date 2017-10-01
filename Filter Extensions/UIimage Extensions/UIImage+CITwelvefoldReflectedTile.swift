import Foundation

extension UIImage{ 

	func twelvefoldReflectedTile(inputCenter:CIVector,inputAngle:Double = 0,inputWidth:Double = 100)->UIImage?{ 
		if let filter = CIFilter.twelvefoldReflectedTile(inputCenter:inputCenter,inputAngle:inputAngle,inputWidth:inputWidth){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}