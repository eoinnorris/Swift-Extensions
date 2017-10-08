import Foundation

extension UIImage{ 
/// Median
///
/// - Parameters

/// -  Returns: The filtered image or nil
	func medianFilter()->UIImage?{ 
		if let filter = CIFilter.medianFilter(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}