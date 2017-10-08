import Foundation

extension UIImage{ 
/// CMYK Halftone
///
/// - Parameters
///   - Parameter inputGCR: The gray component replacement value. The value can vary from 0.0 (none) to 1.0.
///   - Parameter inputAngle: The angle of the pattern.
///   - Parameter inputWidth: The distance between dots in the pattern.
///   - Parameter inputSharpness: The sharpness of the pattern. The larger the value, the sharper the pattern.
///   - Parameter inputCenter: The x and y position to use as the center of the halftone pattern
///   - Parameter inputUCR: The under color removal value. The value can vary from 0.0 to 1.0. 
/// -  Returns: The filtered image or nil
	func cMYKHalftone(inputGCR:Double = 1,inputAngle:Double = 0,inputWidth:Double = 6,inputSharpness:CGColorSpace,inputCenter:CIVector,inputUCR:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.cMYKHalftone(inputGCR:inputGCR,inputAngle:inputAngle,inputWidth:inputWidth,inputSharpness:inputSharpness,inputCenter:inputCenter,inputUCR:inputUCR){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}