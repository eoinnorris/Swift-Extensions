import Foundation

extension CIFilter{ 
/// Motion Blur
///
/// - Parameters
///   - Parameter inputAngle: The angle of the motion determines which direction the blur smears.
///   - Parameter inputRadius: The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.
/// -  Returns: The filtered image or nil
	class func motionBlur(inputAngle:Double = 0,inputRadius:Double = 20)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIMotionBlur"){ 
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}
