import Foundation

extension UIImage{ 
/// Height Field From Mask
///
/// - Parameters
///   - Parameter inputRadius: The distance from the edge of the mask for the smooth transition is proportional to the input radius. Larger values make the transition smoother and more pronounced. Smaller values make the transition approximate a fillet radius.
/// -  Returns: The filtered image or nil
	func heightFieldFromMask(inputRadius:Double = 10)->UIImage?{ 
		if let filter = CIFilter.heightFieldFromMask(inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}