import Foundation

extension CIFilter{ 
/// Sixfold Reflected Tile
///
/// - Parameters
///   - Parameter inputCenter: The x and y position to use as the center of the effect
///   - Parameter inputAngle: The angle (in radians) of the tiled pattern.
///   - Parameter inputWidth: The width of a tile.
/// -  Returns: The filtered image or nil
	class func sixfoldReflectedTile(inputCenter:CIVector,inputAngle:Double = 0,inputWidth:Double = 100)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CISixfoldReflectedTile"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputWidth, forKey:"inputWidth")
			result = filter
		}
		return result
	}
}
