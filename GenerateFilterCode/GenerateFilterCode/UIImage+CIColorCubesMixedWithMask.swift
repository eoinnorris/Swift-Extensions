import Foundation

extension UIImage{ 
/// Color Cubes Mixed With Mask
///
/// - Parameters
///   - Parameter inputMaskImage: A masking image.
///   - Parameter inputCube0Data: 
///   - Parameter inputCube1Data: 
///   - Parameter inputCubeDimension: 
///   - Parameter inputColorSpace: 
/// -  Returns: The filtered image or nil
	func colorCubesMixedWithMask(inputMaskImage:CIImage,inputCube0Data:NSData,inputCube1Data:NSData,inputCubeDimension:Double = 2,inputColorSpace:NSObject)->UIImage?{ 
		if let filter = CIFilter.colorCubesMixedWithMask(inputMaskImage:inputMaskImage,inputCube0Data:inputCube0Data,inputCube1Data:inputCube1Data,inputCubeDimension:inputCubeDimension,inputColorSpace:inputColorSpace){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}