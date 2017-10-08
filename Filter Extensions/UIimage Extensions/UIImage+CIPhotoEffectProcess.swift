import Foundation

extension UIImage{ 
/// Photo Effect Process
///
/// - Parameters

/// -  Returns: The filtered image or nil
	func photoEffectProcess()->UIImage?{ 
		if let filter = CIFilter.photoEffectProcess(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}