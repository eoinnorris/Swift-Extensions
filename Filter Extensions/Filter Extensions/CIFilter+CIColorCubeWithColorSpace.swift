import Foundation

extension CIFilter{ 
/// Color Cube with ColorSpace
///
/// - Parameters
///   - Parameter inputCubeDimension: 
///   - Parameter inputCubeData: 
///   - Parameter inputColorSpace: 
/// -  Returns: The filtered image or nil
	class func colorCubeWithColorSpace(inputCubeDimension:Double = 2,inputCubeData:NSData,inputColorSpace:NSObject)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIColorCubeWithColorSpace"){ 
			filter.setValue(inputCubeDimension, forKey:"inputCubeDimension")
			filter.setValue(inputCubeData, forKey:"inputCubeData")
			filter.setValue(inputColorSpace, forKey:"inputColorSpace")
			result = filter
		}
		return result
	}
}
