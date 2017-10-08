import Foundation

extension CIFilter{ 
/// Color Cube
///
/// - Parameters
///   - Parameter inputCubeDimension: 
///   - Parameter inputCubeData: This is a color table of floating-point RGBA cells that use premultiplied alpha. The cells are organized in a standard ordering. The columns and rows of the data are indexed by red and green, respectively. Each data plane is followed by the next higher plane in the data, with planes indexed by blue.
/// -  Returns: The filtered image or nil
	class func colorCube(inputCubeDimension:Double = 2,inputCubeData:NSData)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIColorCube"){ 
			filter.setValue(inputCubeDimension, forKey:"inputCubeDimension")
			filter.setValue(inputCubeData, forKey:"inputCubeData")
			result = filter
		}
		return result
	}
}
