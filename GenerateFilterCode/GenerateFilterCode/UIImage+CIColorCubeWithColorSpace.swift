import Foundation

extension UIImage{ 
/// Color Cube with ColorSpace
///
/// - Parameters
///   - Parameter inputCubeDimension: 
///   - Parameter inputCubeData: 
///   - Parameter inputColorSpace: 
/// -  Returns: The filtered image or nil
	func colorCubeWithColorSpace(inputCubeDimension:Double = 2,inputCubeData:NSData,inputColorSpace:NSObject)->UIImage?{ 
		if let filter = CIFilter.colorCubeWithColorSpace(inputCubeDimension:inputCubeDimension,inputCubeData:inputCubeData,inputColorSpace:inputColorSpace){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}