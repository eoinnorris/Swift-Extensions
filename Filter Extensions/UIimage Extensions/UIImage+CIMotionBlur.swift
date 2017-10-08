import Foundation

extension UIImage{ 
/// Motion Blur
///
/// - Parameters
///   - Parameter inputAngle: The angle of the motion determines which direction the blur smears.
///   - Parameter inputRadius: The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.
/// -  Returns: The filtered image or nil
	func motionBlur(inputAngle:Double = 0,inputRadius:Double = 20)->UIImage?{ 
		if let filter = CIFilter.motionBlur(inputAngle:inputAngle,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}