import Foundation

extension UIImage{ 
/// Ripple
///
/// - Parameters
///   - Parameter inputShadingImage: An image that looks like a shaded sphere enclosed in a square image.
///   - Parameter inputTargetImage: The target image for a transition.
///   - Parameter inputExtent: A rectangle that defines the extent of the effect.
///   - Parameter inputTime: The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
///   - Parameter inputWidth: The width of the ripple.
///   - Parameter inputScale: A value that determines whether the ripple starts as a bulge (higher value) or a dimple (lower value).
///   - Parameter inputCenter: The x and y position to use as the center of the effect
/// -  Returns: The filtered image or nil
	func rippleTransition(inputShadingImage:CIImage,inputTargetImage:CIImage,inputExtent:CIVector,inputTime:Double = 0,inputWidth:Double = 100,inputScale:Double = 50,inputCenter:CIVector)->UIImage?{ 
		if let filter = CIFilter.rippleTransition(inputShadingImage:inputShadingImage,inputTargetImage:inputTargetImage,inputExtent:inputExtent,inputTime:inputTime,inputWidth:inputWidth,inputScale:inputScale,inputCenter:inputCenter){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}