import Foundation

extension CIFilter{ 
/// Flash
///
/// - Parameters
///   - Parameter inputTargetImage: The target image for a transition.
///   - Parameter inputStriationContrast: The contrast of the light rays emanating from the flash.
///   - Parameter inputColor: The color of the light rays emanating from the flash.
///   - Parameter inputExtent: The extent of the flash.
///   - Parameter inputTime: The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
///   - Parameter inputCenter: The x and y position to use as the center of the effect
///   - Parameter inputMaxStriationRadius: The radius of the light rays emanating from the flash.
///   - Parameter inputFadeThreshold: The amount of fade between the flash and the target image. The higher the value, the more flash time and the less fade time.
///   - Parameter inputStriationStrength: The strength of the light rays emanating from the flash.
/// -  Returns: The filtered image or nil
	class func flashTransition(inputTargetImage:CIImage,inputStriationContrast:CGColorSpace,inputColor:CIColor,inputExtent:CIVector,inputTime:Double = 0,inputCenter:CIVector,inputMaxStriationRadius:CGColorSpace,inputFadeThreshold:CGColorSpace,inputStriationStrength:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIFlashTransition"){ 
			filter.setValue(inputTargetImage, forKey:"inputTargetImage")
			filter.setValue(inputStriationContrast, forKey:"inputStriationContrast")
			filter.setValue(inputColor, forKey:"inputColor")
			filter.setValue(inputExtent, forKey:"inputExtent")
			filter.setValue(inputTime, forKey:"inputTime")
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputMaxStriationRadius, forKey:"inputMaxStriationRadius")
			filter.setValue(inputFadeThreshold, forKey:"inputFadeThreshold")
			filter.setValue(inputStriationStrength, forKey:"inputStriationStrength")
			result = filter
		}
		return result
	}
}
