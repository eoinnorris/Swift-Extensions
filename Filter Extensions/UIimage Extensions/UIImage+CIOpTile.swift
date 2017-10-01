import Foundation

extension UIImage{ 

	func opTile(inputCenter:CIVector,inputAngle:Double = 0,inputWidth:Double = 65,inputScale:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.opTile(inputCenter:inputCenter,inputAngle:inputAngle,inputWidth:inputWidth,inputScale:inputScale){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}