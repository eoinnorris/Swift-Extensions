import Foundation

extension UIImage{ 
/// Bicubic Scale Transform
///
/// - Parameters
///   - Parameter inputScale: The scaling factor to use on the image. Values less than 1.0 scale down the images. Values greater than 1.0 scale up the image.
///   - Parameter inputAspectRatio: The additional horizontal scaling factor to use on the image.
///   - Parameter inputB: Specifies the value of B to use for the cubic resampling function.
///   - Parameter inputC: Specifies the value of C to use for the cubic resampling function.
/// -  Returns: The filtered image or nil
	func bicubicScaleTransform(inputScale:Double = 1,inputAspectRatio:Double = 1,inputB:Double = 0,inputC:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.bicubicScaleTransform(inputScale:inputScale,inputAspectRatio:inputAspectRatio,inputB:inputB,inputC:inputC){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}