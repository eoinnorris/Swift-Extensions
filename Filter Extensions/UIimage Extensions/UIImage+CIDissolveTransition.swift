import Foundation

extension UIImage{ 
/// Dissolve
///
/// - Parameters
///   - Parameter inputTargetImage: The target image for a transition.
///   - Parameter inputTime: The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
/// -  Returns: The filtered image or nil
	func dissolveTransition(inputTargetImage:CIImage,inputTime:Double = 0)->UIImage?{ 
		if let filter = CIFilter.dissolveTransition(inputTargetImage:inputTargetImage,inputTime:inputTime){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}