import Foundation

extension UIImage{ 
/// Depth To Disparity
///
/// - Parameters

/// -  Returns: The filtered image or nil
	func depthToDisparity()->UIImage?{ 
		if let filter = CIFilter.depthToDisparity(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}