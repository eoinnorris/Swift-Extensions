import Foundation

extension CIFilter{ 
/// Sepia Tone
///
/// - Parameters
///   - Parameter inputIntensity: The intensity of the sepia effect. A value of 1.0 creates a monochrome sepia image. A value of 0.0 has no effect on the image.
/// -  Returns: The filtered image or nil
	class func sepiaTone(inputIntensity:Double = 1)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CISepiaTone"){ 
			filter.setValue(inputIntensity, forKey:"inputIntensity")
			result = filter
		}
		return result
	}
}
