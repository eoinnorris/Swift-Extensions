import Foundation

extension CIFilter{ 
/// Lanczos Scale Transform
///
/// - Parameters
///   - Parameter inputAspectRatio: The additional horizontal scaling factor to use on the image.
///   - Parameter inputScale: The scaling factor to use on the image. Values less than 1.0 scale down the images. Values greater than 1.0 scale up the image.
/// -  Returns: The filtered image or nil
	class func lanczosScaleTransform(inputAspectRatio:Double = 1,inputScale:Double = 1)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CILanczosScaleTransform"){ 
			filter.setValue(inputAspectRatio, forKey:"inputAspectRatio")
			filter.setValue(inputScale, forKey:"inputScale")
			result = filter
		}
		return result
	}
}
