import Foundation

extension UIImage{ 
/// sRGB Tone Curve to Linear
///
/// - Parameters

/// -  Returns: The filtered image or nil
	func sRGBToneCurveToLinear()->UIImage?{ 
		if let filter = CIFilter.sRGBToneCurveToLinear(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}