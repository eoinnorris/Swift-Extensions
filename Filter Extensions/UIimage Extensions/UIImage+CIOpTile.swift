import Foundation

extension UIImage{ 
/// Op Tile
///
/// - Parameters
///   - Parameter inputCenter: The x and y position to use as the center of the effect
///   - Parameter inputAngle: The angle of a tile.
///   - Parameter inputWidth: The width of a tile.
///   - Parameter inputScale: The scale determines the number of tiles in the effect.
/// -  Returns: The filtered image or nil
	func opTile(inputCenter:CIVector,inputAngle:Double = 0,inputWidth:Double = 65,inputScale:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.opTile(inputCenter:inputCenter,inputAngle:inputAngle,inputWidth:inputWidth,inputScale:inputScale){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}