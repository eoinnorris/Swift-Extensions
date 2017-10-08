import Foundation

extension UIImage{ 
/// Fourfold Translated Tile
///
/// - Parameters
///   - Parameter inputCenter: The x and y position to use as the center of the effect
///   - Parameter inputAcuteAngle: The primary angle for the repeating translated tile. Small values create thin diamond tiles, and higher values create fatter translated tiles.
///   - Parameter inputAngle: The angle (in radians) of the tiled pattern.
///   - Parameter inputWidth: The width of a tile.
/// -  Returns: The filtered image or nil
	func fourfoldTranslatedTile(inputCenter:CIVector,inputAcuteAngle:CGColorSpace,inputAngle:Double = 0,inputWidth:Double = 100)->UIImage?{ 
		if let filter = CIFilter.fourfoldTranslatedTile(inputCenter:inputCenter,inputAcuteAngle:inputAcuteAngle,inputAngle:inputAngle,inputWidth:inputWidth){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}