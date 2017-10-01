import Foundation

extension UIImage{ 

	func colorCube(inputCubeDimension:Double = 2,inputCubeData:NSData)->UIImage?{ 
		if let filter = CIFilter.colorCube(inputCubeDimension:inputCubeDimension,inputCubeData:inputCubeData){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}