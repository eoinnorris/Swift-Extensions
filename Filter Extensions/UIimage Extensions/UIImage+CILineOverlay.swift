import Foundation

extension UIImage{ 
/// Line Overlay
///
/// - Parameters
///   - Parameter inputThreshold: This value determines edge visibility. Larger values thin out the edges.
///   - Parameter inputNRSharpness: The amount of sharpening done when removing noise in the image before tracing the edges of the image. This improves the edge acquisition.
///   - Parameter inputNRNoiseLevel: The noise level of the image (used with camera data) that gets removed before tracing the edges of the image. Increasing the noise level helps to clean up the traced edges of the image.
///   - Parameter inputContrast: The amount of anti-aliasing to use on the edges produced by this filter. Higher values produce higher contrast edges (they are less anti-aliased).
///   - Parameter inputEdgeIntensity: The accentuation factor of the Sobel gradient information when tracing the edges of the image. Higher values find more edges, although typically a low value (such as 1.0) is used.
/// -  Returns: The filtered image or nil
	func lineOverlay(inputThreshold:CGColorSpace,inputNRSharpness:CGColorSpace,inputNRNoiseLevel:CGColorSpace,inputContrast:Double = 50,inputEdgeIntensity:Double = 1)->UIImage?{ 
		if let filter = CIFilter.lineOverlay(inputThreshold:inputThreshold,inputNRSharpness:inputNRSharpness,inputNRNoiseLevel:inputNRNoiseLevel,inputContrast:inputContrast,inputEdgeIntensity:inputEdgeIntensity){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}