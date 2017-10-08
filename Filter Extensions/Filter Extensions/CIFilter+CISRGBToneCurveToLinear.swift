import Foundation

extension CIFilter{ 
/// sRGB Tone Curve to Linear
///
/// - Parameters

/// -  Returns: The filtered image or nil
	class func sRGBToneCurveToLinear()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CISRGBToneCurveToLinear"){ 
			result = filter
		}
		return result
	}
}
