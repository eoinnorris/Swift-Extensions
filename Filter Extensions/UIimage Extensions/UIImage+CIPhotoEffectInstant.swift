import Foundation

extension UIImage{ 
/// Photo Effect Instant
///
/// - Parameters

/// -  Returns: The filtered image or nil
	func photoEffectInstant()->UIImage?{ 
		if let filter = CIFilter.photoEffectInstant(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}