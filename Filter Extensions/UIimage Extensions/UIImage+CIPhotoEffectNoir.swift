import Foundation

extension UIImage{ 
/// Photo Effect Noir
///
/// - Parameters

/// -  Returns: The filtered image or nil
	func photoEffectNoir()->UIImage?{ 
		if let filter = CIFilter.photoEffectNoir(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}