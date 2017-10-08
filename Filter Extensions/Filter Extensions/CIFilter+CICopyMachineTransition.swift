import Foundation

extension CIFilter{ 
/// Copy Machine
///
/// - Parameters
///   - Parameter inputTargetImage: The target image for a transition.
///   - Parameter inputColor: The color of the copier light.
///   - Parameter inputExtent: A rectangle that defines the extent of the effect.
///   - Parameter inputOpacity: The opacity of the copier light. A value of 0.0 is transparent. A value of 1.0 is opaque.
///   - Parameter inputTime: The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
///   - Parameter inputAngle: The angle of the copier light.
///   - Parameter inputWidth: The width of the copier light. 
/// -  Returns: The filtered image or nil
	class func copyMachineTransition(inputTargetImage:CIImage,inputColor:CIColor,inputExtent:CIVector,inputOpacity:CGColorSpace,inputTime:Double = 0,inputAngle:Double = 0,inputWidth:Double = 200)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CICopyMachineTransition"){ 
			filter.setValue(inputTargetImage, forKey:"inputTargetImage")
			filter.setValue(inputColor, forKey:"inputColor")
			filter.setValue(inputExtent, forKey:"inputExtent")
			filter.setValue(inputOpacity, forKey:"inputOpacity")
			filter.setValue(inputTime, forKey:"inputTime")
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputWidth, forKey:"inputWidth")
			result = filter
		}
		return result
	}
}
