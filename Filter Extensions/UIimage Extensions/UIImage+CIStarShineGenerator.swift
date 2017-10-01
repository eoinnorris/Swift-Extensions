import Foundation

extension UIImage{ 

	func starShineGenerator(inputColor:CIColor,inputCrossAngle:CGColorSpace,inputCrossWidth:CGColorSpace,inputRadius:Double = 50,inputEpsilon:Double = -2,inputCrossScale:Double = 15,inputCenter:CIVector,inputCrossOpacity:Double = -2)->UIImage?{ 
		if let filter = CIFilter.starShineGenerator(inputColor:inputColor,inputCrossAngle:inputCrossAngle,inputCrossWidth:inputCrossWidth,inputRadius:inputRadius,inputEpsilon:inputEpsilon,inputCrossScale:inputCrossScale,inputCenter:inputCenter,inputCrossOpacity:inputCrossOpacity){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}