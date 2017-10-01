import Foundation

extension UIImage{ 

	func bumpDistortionLinear(inputCenter:CIVector,inputAngle:Double = 0,inputRadius:Double = 300,inputScale:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.bumpDistortionLinear(inputCenter:inputCenter,inputAngle:inputAngle,inputRadius:inputRadius,inputScale:inputScale){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}