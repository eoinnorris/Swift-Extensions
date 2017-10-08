import Foundation

extension UIImage{ 
/// Photo Effect Tonal
///
/// - Parameters

/// -  Returns: The filtered image or nil
	func photoEffectTonal()->UIImage?{ 
		if let filter = CIFilter.photoEffectTonal(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}