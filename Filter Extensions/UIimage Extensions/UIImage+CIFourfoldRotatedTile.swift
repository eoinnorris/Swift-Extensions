import Foundation

extension UIImage{ 

	func fourfoldRotatedTile(inputCenter:CIVector,inputAngle:Double = 0,inputWidth:Double = 100)->UIImage?{ 
		if let filter = CIFilter.fourfoldRotatedTile(inputCenter:inputCenter,inputAngle:inputAngle,inputWidth:inputWidth){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}