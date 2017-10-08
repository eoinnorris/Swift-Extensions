import Foundation

extension UIImage{ 
/// Disintegrate With Mask
///
/// - Parameters
///   - Parameter inputMaskImage: An image that defines the shape to use when disintegrating from the source to the target image.
///   - Parameter inputTargetImage: The target image for a transition.
///   - Parameter inputShadowRadius: The radius of the shadow created by the mask.
///   - Parameter inputTime: The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
///   - Parameter inputShadowOffset: The offset of the shadow created by the mask.
///   - Parameter inputShadowDensity: The density of the shadow created by the mask.
/// -  Returns: The filtered image or nil
	func disintegrateWithMaskTransition(inputMaskImage:CIImage,inputTargetImage:CIImage,inputShadowRadius:Double = 8,inputTime:Double = 0,inputShadowOffset:CIVector,inputShadowDensity:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.disintegrateWithMaskTransition(inputMaskImage:inputMaskImage,inputTargetImage:inputTargetImage,inputShadowRadius:inputShadowRadius,inputTime:inputTime,inputShadowOffset:inputShadowOffset,inputShadowDensity:inputShadowDensity){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}