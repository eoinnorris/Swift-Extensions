import Foundation

extension UIImage{ 
/// Maximum Component
///
/// - Parameters

/// -  Returns: The filtered image or nil
	func maximumComponent()->UIImage?{ 
		if let filter = CIFilter.maximumComponent(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}