import Foundation

extension UIImage{ 

	func cMYKHalftone(inputGCR:Double = 1,inputAngle:Double = 0,inputWidth:Double = 6,inputSharpness:CGColorSpace,inputCenter:CIVector,inputUCR:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.cMYKHalftone(inputGCR:inputGCR,inputAngle:inputAngle,inputWidth:inputWidth,inputSharpness:inputSharpness,inputCenter:inputCenter,inputUCR:inputUCR){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}