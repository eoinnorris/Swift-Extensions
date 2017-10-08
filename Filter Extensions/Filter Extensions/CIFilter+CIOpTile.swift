import Foundation

extension CIFilter{ 
/// Op Tile
///
/// - Parameters
///   - Parameter inputCenter: The x and y position to use as the center of the effect
///   - Parameter inputAngle: The angle of a tile.
///   - Parameter inputWidth: The width of a tile.
///   - Parameter inputScale: The scale determines the number of tiles in the effect.
/// -  Returns: The filtered image or nil
	class func opTile(inputCenter:CIVector,inputAngle:Double = 0,inputWidth:Double = 65,inputScale:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIOpTile"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputWidth, forKey:"inputWidth")
			filter.setValue(inputScale, forKey:"inputScale")
			result = filter
		}
		return result
	}
}
