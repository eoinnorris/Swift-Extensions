import Foundation

extension UIImage{ 

	func vortexDistortion(inputCenter:CIVector,inputAngle:CGColorSpace,inputRadius:Double = 300)->UIImage?{ 
		if let filter = CIFilter.vortexDistortion(inputCenter:inputCenter,inputAngle:inputAngle,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}