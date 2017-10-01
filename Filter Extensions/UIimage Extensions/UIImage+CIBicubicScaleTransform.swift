import Foundation

extension UIImage{ 

	func bicubicScaleTransform(inputScale:Double = 1,inputAspectRatio:Double = 1,inputB:Double = 0,inputC:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.bicubicScaleTransform(inputScale:inputScale,inputAspectRatio:inputAspectRatio,inputB:inputB,inputC:inputC){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}