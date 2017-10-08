import Foundation

extension CIFilter{ 
/// Bicubic Scale Transform
///
/// - Parameters
///   - Parameter inputScale: The scaling factor to use on the image. Values less than 1.0 scale down the images. Values greater than 1.0 scale up the image.
///   - Parameter inputAspectRatio: The additional horizontal scaling factor to use on the image.
///   - Parameter inputB: Specifies the value of B to use for the cubic resampling function.
///   - Parameter inputC: Specifies the value of C to use for the cubic resampling function.
/// -  Returns: The filtered image or nil
	class func bicubicScaleTransform(inputScale:Double = 1,inputAspectRatio:Double = 1,inputB:Double = 0,inputC:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIBicubicScaleTransform"){ 
			filter.setValue(inputScale, forKey:"inputScale")
			filter.setValue(inputAspectRatio, forKey:"inputAspectRatio")
			filter.setValue(inputB, forKey:"inputB")
			filter.setValue(inputC, forKey:"inputC")
			result = filter
		}
		return result
	}
}
