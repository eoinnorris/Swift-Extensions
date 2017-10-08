import Foundation

extension CIFilter{ 
/// Zoom Blur
///
/// - Parameters
///   - Parameter inputCenter: The center of the effect as x and y coordinates.
///   - Parameter inputAmount: The zoom-in amount. Larger values result in more zooming in.
/// -  Returns: The filtered image or nil
	class func zoomBlur(inputCenter:CIVector,inputAmount:Double = 20)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIZoomBlur"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputAmount, forKey:"inputAmount")
			result = filter
		}
		return result
	}
}
