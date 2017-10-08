import Foundation

extension UIImage{ 
/// Photo Effect Chrome
///
/// - Parameters

/// -  Returns: The filtered image or nil
	func photoEffectChrome()->UIImage?{ 
		if let filter = CIFilter.photoEffectChrome(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}