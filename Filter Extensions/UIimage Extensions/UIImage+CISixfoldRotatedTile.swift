import Foundation

extension UIImage{ 
/// Sixfold Rotated Tile
///
/// - Parameters
///   - Parameter inputCenter: The x and y position to use as the center of the effect
///   - Parameter inputAngle: The angle (in radians) of the tiled pattern.
///   - Parameter inputWidth: The width of a tile.
/// -  Returns: The filtered image or nil
	func sixfoldRotatedTile(inputCenter:CIVector,inputAngle:Double = 0,inputWidth:Double = 100)->UIImage?{ 
		if let filter = CIFilter.sixfoldRotatedTile(inputCenter:inputCenter,inputAngle:inputAngle,inputWidth:inputWidth){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}