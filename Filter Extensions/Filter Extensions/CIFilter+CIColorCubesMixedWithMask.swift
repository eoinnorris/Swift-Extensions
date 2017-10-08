import Foundation

extension CIFilter{ 
/// Color Cubes Mixed With Mask
///
/// - Parameters
///   - Parameter inputMaskImage: A masking image.
///   - Parameter inputCube0Data: 
///   - Parameter inputCube1Data: 
///   - Parameter inputCubeDimension: 
///   - Parameter inputColorSpace: 
/// -  Returns: The filtered image or nil
	class func colorCubesMixedWithMask(inputMaskImage:CIImage,inputCube0Data:NSData,inputCube1Data:NSData,inputCubeDimension:Double = 2,inputColorSpace:NSObject)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIColorCubesMixedWithMask"){ 
			filter.setValue(inputMaskImage, forKey:"inputMaskImage")
			filter.setValue(inputCube0Data, forKey:"inputCube0Data")
			filter.setValue(inputCube1Data, forKey:"inputCube1Data")
			filter.setValue(inputCubeDimension, forKey:"inputCubeDimension")
			filter.setValue(inputColorSpace, forKey:"inputColorSpace")
			result = filter
		}
		return result
	}
}
