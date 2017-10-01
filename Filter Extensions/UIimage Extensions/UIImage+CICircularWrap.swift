import Foundation

extension UIImage{ 

	func circularWrap(inputCenter:CIVector,inputAngle:Double = 0,inputRadius:Double = 150)->UIImage?{ 
		if let filter = CIFilter.circularWrap(inputCenter:inputCenter,inputAngle:inputAngle,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}