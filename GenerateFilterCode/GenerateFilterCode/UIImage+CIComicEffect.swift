import Foundation

extension UIImage{ 
/// Comic Effect
///
/// - Parameters

/// -  Returns: The filtered image or nil
	func comicEffect()->UIImage?{ 
		if let filter = CIFilter.comicEffect(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}