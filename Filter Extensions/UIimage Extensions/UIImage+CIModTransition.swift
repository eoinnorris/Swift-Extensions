import Foundation

extension UIImage{ 
/// Mod
///
/// - Parameters
///   - Parameter inputTargetImage: The target image for a transition.
///   - Parameter inputTime: The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
///   - Parameter inputAngle: The angle of the mod hole pattern.
///   - Parameter inputCompression: The amount of stretching applied to the mod hole pattern. Holes in the center are not distorted as much as those at the edge of the image.
///   - Parameter inputRadius: The radius of the undistorted holes in the pattern.
///   - Parameter inputCenter: The x and y position to use as the center of the effect
/// -  Returns: The filtered image or nil
	func modTransition(inputTargetImage:CIImage,inputTime:Double = 0,inputAngle:Double = 2,inputCompression:Double = 300,inputRadius:Double = 150,inputCenter:CIVector)->UIImage?{ 
		if let filter = CIFilter.modTransition(inputTargetImage:inputTargetImage,inputTime:inputTime,inputAngle:inputAngle,inputCompression:inputCompression,inputRadius:inputRadius,inputCenter:inputCenter){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}