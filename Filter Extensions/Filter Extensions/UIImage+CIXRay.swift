import Foundation

extension UIImage{ 
/// X-Ray
///
/// - Parameters

/// -  Returns: The filtered image or nil
	func xRay()->UIImage?{ 
		if let filter = CIFilter.xRay(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}