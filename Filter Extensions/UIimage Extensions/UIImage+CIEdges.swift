import Foundation

extension UIImage{ 
/// Edges
///
/// - Parameters
///   - Parameter inputIntensity: The intensity of the edges. The larger the value, the higher the intensity.
/// -  Returns: The filtered image or nil
	func edges(inputIntensity:Double = 1)->UIImage?{ 
		if let filter = CIFilter.edges(inputIntensity:inputIntensity){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}