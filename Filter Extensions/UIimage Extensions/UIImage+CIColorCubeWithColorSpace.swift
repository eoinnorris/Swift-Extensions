import Foundation

extension UIImage{ 

	func colorCubeWithColorSpace(inputCubeDimension:Double = 2,inputCubeData:NSData,inputColorSpace:NSObject)->UIImage?{ 
		if let filter = CIFilter.colorCubeWithColorSpace(inputCubeDimension:inputCubeDimension,inputCubeData:inputCubeData,inputColorSpace:inputColorSpace){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}