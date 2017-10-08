import Foundation

extension UIImage{ 
/// Color Invert
///
/// - Parameters

/// -  Returns: The filtered image or nil
	func colorInvert()->UIImage?{ 
		if let filter = CIFilter.colorInvert(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}