import Foundation

extension CIFilter{ 
/// Hexagonal Pixelate
///
/// - Parameters
///   - Parameter inputCenter: The x and y position to use as the center of the effect
///   - Parameter inputScale: The scale determines the size of the hexagons. Larger values result in larger hexagons.
/// -  Returns: The filtered image or nil
	class func hexagonalPixellate(inputCenter:CIVector,inputScale:Double = 8)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIHexagonalPixellate"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputScale, forKey:"inputScale")
			result = filter
		}
		return result
	}
}
