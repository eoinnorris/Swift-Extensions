import Foundation

extension CIFilter{ 
/// Page Curl
///
/// - Parameters
///   - Parameter inputShadingImage: An image that looks like a shaded sphere enclosed in a square image.
///   - Parameter inputTargetImage: The target image for a transition.
///   - Parameter inputBacksideImage: The image that appears on the back of the source image, as the page curls to reveal the target image.
///   - Parameter inputExtent: The extent of the effect.
///   - Parameter inputTime: The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
///   - Parameter inputAngle: The angle of the curling page.
///   - Parameter inputRadius: The radius of the curl.
/// -  Returns: The filtered image or nil
	class func pageCurlTransition(inputShadingImage:CIImage,inputTargetImage:CIImage,inputBacksideImage:CIImage,inputExtent:CIVector,inputTime:Double = 0,inputAngle:Double = 0,inputRadius:Double = 100)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPageCurlTransition"){ 
			filter.setValue(inputShadingImage, forKey:"inputShadingImage")
			filter.setValue(inputTargetImage, forKey:"inputTargetImage")
			filter.setValue(inputBacksideImage, forKey:"inputBacksideImage")
			filter.setValue(inputExtent, forKey:"inputExtent")
			filter.setValue(inputTime, forKey:"inputTime")
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}
