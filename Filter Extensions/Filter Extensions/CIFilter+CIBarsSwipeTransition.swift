import Foundation

extension CIFilter{ 
/// Bars Swipe Transition
///
/// - Parameters
///   - Parameter inputTargetImage: The target image for a transition.
///   - Parameter inputTime: The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
///   - Parameter inputAngle: The angle (in radians) of the bars.
///   - Parameter inputBarOffset: The offset of one bar with respect to another
///   - Parameter inputWidth: The width of each bar.
/// -  Returns: The filtered image or nil
	class func barsSwipeTransition(inputTargetImage:CIImage,inputTime:Double = 0,inputAngle:CGColorSpace,inputBarOffset:Double = 10,inputWidth:Double = 30)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIBarsSwipeTransition"){ 
			filter.setValue(inputTargetImage, forKey:"inputTargetImage")
			filter.setValue(inputTime, forKey:"inputTime")
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputBarOffset, forKey:"inputBarOffset")
			filter.setValue(inputWidth, forKey:"inputWidth")
			result = filter
		}
		return result
	}
}
