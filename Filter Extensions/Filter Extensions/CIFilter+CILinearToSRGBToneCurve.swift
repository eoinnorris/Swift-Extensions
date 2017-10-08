import Foundation

extension CIFilter{ 
/// Linear to sRGB Tone Curve
///
/// - Parameters

/// -  Returns: The filtered image or nil
	class func linearToSRGBToneCurve()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CILinearToSRGBToneCurve"){ 
			result = filter
		}
		return result
	}
}
