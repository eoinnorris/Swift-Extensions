import Foundation

extension UIImage{ 
/// Mask to Alpha
///
/// - Parameters

/// -  Returns: The filtered image or nil
	func maskToAlpha()->UIImage?{ 
		if let filter = CIFilter.maskToAlpha(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}