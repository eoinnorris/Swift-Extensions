import Foundation

extension CIFilter{ 
/// Dissolve
///
/// - Parameters
///   - Parameter inputTargetImage: The target image for a transition.
///   - Parameter inputTime: The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
/// -  Returns: The filtered image or nil
	class func dissolveTransition(inputTargetImage:CIImage,inputTime:Double = 0)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIDissolveTransition"){ 
			filter.setValue(inputTargetImage, forKey:"inputTargetImage")
			filter.setValue(inputTime, forKey:"inputTime")
			result = filter
		}
		return result
	}
}
