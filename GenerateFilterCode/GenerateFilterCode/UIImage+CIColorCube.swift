import Foundation

extension UIImage{ 
/// Color Cube
///
/// - Parameters
///   - Parameter inputCubeDimension: 
///   - Parameter inputCubeData: This is a color table of floating-point RGBA cells that use premultiplied alpha. The cells are organized in a standard ordering. The columns and rows of the data are indexed by red and green, respectively. Each data plane is followed by the next higher plane in the data, with planes indexed by blue.
/// -  Returns: The filtered image or nil
	func colorCube(inputCubeDimension:Double = 2,inputCubeData:NSData)->UIImage?{ 
		if let filter = CIFilter.colorCube(inputCubeDimension:inputCubeDimension,inputCubeData:inputCubeData){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}