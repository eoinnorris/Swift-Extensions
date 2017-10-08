import Foundation

extension UIImage{ 
/// Edge Work
///
/// - Parameters
///   - Parameter inputRadius: The thickness of the edges. The larger the value, the thicker the edges.
/// -  Returns: The filtered image or nil
	func edgeWork(inputRadius:Double = 3)->UIImage?{ 
		if let filter = CIFilter.edgeWork(inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}