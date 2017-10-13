import Foundation

extension UIImage{ 
/// Stripes
///
/// - Parameters
///   - Parameter inputCenter: The x and y position to use as the center of the stripe pattern.
///   - Parameter inputColor1: A color to use for the even stripes.
///   - Parameter inputColor0: A color to use for the odd stripes.
///   - Parameter inputWidth: The width of a stripe.
///   - Parameter inputSharpness: The sharpness of the stripe pattern. The smaller the value, the more blurry the pattern. Values range from 0.0 to 1.0.
/// -  Returns: The filtered image or nil
	func stripesGenerator(inputCenter:CIVector,inputColor1:CIColor,inputColor0:CIColor,inputWidth:Double = 80,inputSharpness:Double = 1)->UIImage?{ 
		if let filter = CIFilter.stripesGenerator(inputCenter:inputCenter,inputColor1:inputColor1,inputColor0:inputColor0,inputWidth:inputWidth,inputSharpness:inputSharpness){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}