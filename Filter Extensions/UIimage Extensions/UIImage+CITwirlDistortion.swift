import Foundation

extension UIImage{ 

	func twirlDistortion(inputCenter:CIVector,inputAngle:CGColorSpace,inputRadius:Double = 300)->UIImage?{ 
		if let filter = CIFilter.twirlDistortion(inputCenter:inputCenter,inputAngle:inputAngle,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}