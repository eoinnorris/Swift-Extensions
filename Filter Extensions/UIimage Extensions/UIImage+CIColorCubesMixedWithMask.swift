import Foundation

extension UIImage{ 

	func colorCubesMixedWithMask(inputMaskImage:CIImage,inputCube0Data:NSData,inputCube1Data:NSData,inputCubeDimension:Double = 2,inputColorSpace:NSObject)->UIImage?{ 
		if let filter = CIFilter.colorCubesMixedWithMask(inputMaskImage:inputMaskImage,inputCube0Data:inputCube0Data,inputCube1Data:inputCube1Data,inputCubeDimension:inputCubeDimension,inputColorSpace:inputColorSpace){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}