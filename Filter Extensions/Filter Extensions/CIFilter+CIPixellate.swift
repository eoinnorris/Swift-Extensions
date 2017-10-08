import Foundation

extension CIFilter{ 
/// Pixelate
///
/// - Parameters
///   - Parameter inputCenter: The x and y position to use as the center of the effect
///   - Parameter inputScale: The scale determines the size of the squares. Larger values result in larger squares.
/// -  Returns: The filtered image or nil
	class func pixellate(inputCenter:CIVector,inputScale:Double = 8)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPixellate"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputScale, forKey:"inputScale")
			result = filter
		}
		return result
	}
}
