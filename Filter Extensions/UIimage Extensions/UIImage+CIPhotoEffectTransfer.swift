import Foundation

extension UIImage{ 
/// Photo Effect Transfer
///
/// - Parameters

/// -  Returns: The filtered image or nil
	func photoEffectTransfer()->UIImage?{ 
		if let filter = CIFilter.photoEffectTransfer(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}