import Foundation

extension UIImage{ 
/// Swipe
///
/// - Parameters
///   - Parameter inputTargetImage: The target image for a transition.
///   - Parameter inputColor: The color of the swipe.
///   - Parameter inputExtent: The extent of the effect.
///   - Parameter inputOpacity: The opacity of the swipe.
///   - Parameter inputTime: The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
///   - Parameter inputAngle: The angle of the swipe.
///   - Parameter inputWidth: The width of the swipe
/// -  Returns: The filtered image or nil
	func swipeTransition(inputTargetImage:CIImage,inputColor:CIColor,inputExtent:CIVector,inputOpacity:Double = 0,inputTime:Double = 0,inputAngle:Double = 0,inputWidth:Double = 300)->UIImage?{ 
		if let filter = CIFilter.swipeTransition(inputTargetImage:inputTargetImage,inputColor:inputColor,inputExtent:inputExtent,inputOpacity:inputOpacity,inputTime:inputTime,inputAngle:inputAngle,inputWidth:inputWidth){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}