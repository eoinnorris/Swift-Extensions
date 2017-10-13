import Foundation

extension UIImage{ 
/// Thermal
///
/// - Parameters

/// -  Returns: The filtered image or nil
	func thermal()->UIImage?{ 
		if let filter = CIFilter.thermal(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}