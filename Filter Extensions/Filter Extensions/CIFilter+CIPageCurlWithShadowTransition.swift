import Foundation

extension CIFilter{ 
/// Page Curl With Shadow
///
/// - Parameters
///   - Parameter inputTargetImage: The target image for a transition.
///   - Parameter inputBacksideImage: The image that appears on the back of the source image, as the page curls to reveal the target image.
///   - Parameter inputExtent: The extent of the effect.
///   - Parameter inputShadowAmount: 
///   - Parameter inputTime: The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
///   - Parameter inputAngle: The angle of the curling page.
///   - Parameter inputRadius: The radius of the curl.
///   - Parameter inputShadowSize: 
///   - Parameter inputShadowExtent: 
/// -  Returns: The filtered image or nil
	class func pageCurlWithShadowTransition(inputTargetImage:CIImage,inputBacksideImage:CIImage,inputExtent:CIVector,inputShadowAmount:CGColorSpace,inputTime:Double = 0,inputAngle:Double = 0,inputRadius:Double = 100,inputShadowSize:CGColorSpace,inputShadowExtent:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPageCurlWithShadowTransition"){ 
			filter.setValue(inputTargetImage, forKey:"inputTargetImage")
			filter.setValue(inputBacksideImage, forKey:"inputBacksideImage")
			filter.setValue(inputExtent, forKey:"inputExtent")
			filter.setValue(inputShadowAmount, forKey:"inputShadowAmount")
			filter.setValue(inputTime, forKey:"inputTime")
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputRadius, forKey:"inputRadius")
			filter.setValue(inputShadowSize, forKey:"inputShadowSize")
			filter.setValue(inputShadowExtent, forKey:"inputShadowExtent")
			result = filter
		}
		return result
	}
}
