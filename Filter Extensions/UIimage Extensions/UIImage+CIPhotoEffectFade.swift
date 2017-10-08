import Foundation

extension UIImage{ 
/// Photo Effect Fade
///
/// - Parameters

/// -  Returns: The filtered image or nil
	func photoEffectFade()->UIImage?{ 
		if let filter = CIFilter.photoEffectFade(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}