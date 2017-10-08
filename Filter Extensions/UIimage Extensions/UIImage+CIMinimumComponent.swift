import Foundation

extension UIImage{ 
/// Minimum Component
///
/// - Parameters

/// -  Returns: The filtered image or nil
	func minimumComponent()->UIImage?{ 
		if let filter = CIFilter.minimumComponent(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}