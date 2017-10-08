import Foundation

extension UIImage{ 
/// Disparity To Depth
///
/// - Parameters

/// -  Returns: The filtered image or nil
	func disparityToDepth()->UIImage?{ 
		if let filter = CIFilter.disparityToDepth(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}