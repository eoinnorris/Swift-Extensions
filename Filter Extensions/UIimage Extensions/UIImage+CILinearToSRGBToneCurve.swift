import Foundation

extension UIImage{ 
/// Linear to sRGB Tone Curve
///
/// - Parameters

/// -  Returns: The filtered image or nil
	func linearToSRGBToneCurve()->UIImage?{ 
		if let filter = CIFilter.linearToSRGBToneCurve(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}