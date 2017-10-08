import Foundation

extension CIFilter{ 
/// Star Shine
///
/// - Parameters
///   - Parameter inputColor: The color to use for the outer shell of the circular star.
///   - Parameter inputCrossAngle: The angle of the cross pattern.
///   - Parameter inputCrossWidth: The width of the cross pattern.
///   - Parameter inputRadius: The radius of the star.
///   - Parameter inputEpsilon: The length of the cross spikes.
///   - Parameter inputCrossScale: The size of the cross pattern.
///   - Parameter inputCenter: The x and y position to use as the center of the star.
///   - Parameter inputCrossOpacity: The opacity of the cross pattern.
/// -  Returns: The filtered image or nil
	class func starShineGenerator(inputColor:CIColor,inputCrossAngle:CGColorSpace,inputCrossWidth:CGColorSpace,inputRadius:Double = 50,inputEpsilon:Double = -2,inputCrossScale:Double = 15,inputCenter:CIVector,inputCrossOpacity:Double = -2)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIStarShineGenerator"){ 
			filter.setValue(inputColor, forKey:"inputColor")
			filter.setValue(inputCrossAngle, forKey:"inputCrossAngle")
			filter.setValue(inputCrossWidth, forKey:"inputCrossWidth")
			filter.setValue(inputRadius, forKey:"inputRadius")
			filter.setValue(inputEpsilon, forKey:"inputEpsilon")
			filter.setValue(inputCrossScale, forKey:"inputCrossScale")
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputCrossOpacity, forKey:"inputCrossOpacity")
			result = filter
		}
		return result
	}
}
