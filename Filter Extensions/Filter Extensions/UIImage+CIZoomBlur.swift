import Foundation

extension UIImage{ 
/// Zoom Blur
///
/// - Parameters
///   - Parameter inputCenter: The center of the effect as x and y coordinates.
///   - Parameter inputAmount: The zoom-in amount. Larger values result in more zooming in.
/// -  Returns: The filtered image or nil
	func zoomBlur(inputCenter:CIVector,inputAmount:Double = 20)->UIImage?{ 
		if let filter = CIFilter.zoomBlur(inputCenter:inputCenter,inputAmount:inputAmount){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}