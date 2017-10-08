import Foundation

extension CIFilter{ 
/// Spot Light
///
/// - Parameters
///   - Parameter inputColor: The color of the spotlight.
///   - Parameter inputLightPointsAt: The x and y position that the spotlight points at.
///   - Parameter inputConcentration: The spotlight size. The smaller the value, the more tightly focused the light beam.
///   - Parameter inputLightPosition: The x and y position of the spotlight.
///   - Parameter inputBrightness: The brightness of the spotlight.
/// -  Returns: The filtered image or nil
	class func spotLight(inputColor:CIColor,inputLightPointsAt:CIVector,inputConcentration:CGColorSpace,inputLightPosition:CIVector,inputBrightness:Double = 3)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CISpotLight"){ 
			filter.setValue(inputColor, forKey:"inputColor")
			filter.setValue(inputLightPointsAt, forKey:"inputLightPointsAt")
			filter.setValue(inputConcentration, forKey:"inputConcentration")
			filter.setValue(inputLightPosition, forKey:"inputLightPosition")
			filter.setValue(inputBrightness, forKey:"inputBrightness")
			result = filter
		}
		return result
	}
}
