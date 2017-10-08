import Foundation

extension UIImage{ 
/// Lanczos Scale Transform
///
/// - Parameters
///   - Parameter inputAspectRatio: The additional horizontal scaling factor to use on the image.
///   - Parameter inputScale: The scaling factor to use on the image. Values less than 1.0 scale down the images. Values greater than 1.0 scale up the image.
/// -  Returns: The filtered image or nil
	func lanczosScaleTransform(inputAspectRatio:Double = 1,inputScale:Double = 1)->UIImage?{ 
		if let filter = CIFilter.lanczosScaleTransform(inputAspectRatio:inputAspectRatio,inputScale:inputScale){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}