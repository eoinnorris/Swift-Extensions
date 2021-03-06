import Foundation

extension UIImage{ 
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
	func starShineGenerator(inputColor:CIColor,inputCrossAngle:CGColorSpace,inputCrossWidth:CGColorSpace,inputRadius:Double = 50,inputEpsilon:Double = -2,inputCrossScale:Double = 15,inputCenter:CIVector,inputCrossOpacity:Double = -2)->UIImage?{ 
		if let filter = CIFilter.starShineGenerator(inputColor:inputColor,inputCrossAngle:inputCrossAngle,inputCrossWidth:inputCrossWidth,inputRadius:inputRadius,inputEpsilon:inputEpsilon,inputCrossScale:inputCrossScale,inputCenter:inputCenter,inputCrossOpacity:inputCrossOpacity){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}