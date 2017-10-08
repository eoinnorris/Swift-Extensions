import Foundation

extension UIImage{ 
/// Photo Effect Mono
///
/// - Parameters

/// -  Returns: The filtered image or nil
	func photoEffectMono()->UIImage?{ 
		if let filter = CIFilter.photoEffectMono(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}