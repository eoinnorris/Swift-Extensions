import Foundation

extension UIImage{ 
/// Perspective Tile
///
/// - Parameters
///   - Parameter inputBottomRight: The bottom right coordinate of a tile.
///   - Parameter inputBottomLeft: The bottom left coordinate of a tile.
///   - Parameter inputTopRight: The top right coordinate of a tile.
///   - Parameter inputTopLeft: The top left coordinate of a tile.
/// -  Returns: The filtered image or nil
	func perspectiveTile(inputBottomRight:CIVector,inputBottomLeft:CIVector,inputTopRight:CIVector,inputTopLeft:CIVector)->UIImage?{ 
		if let filter = CIFilter.perspectiveTile(inputBottomRight:inputBottomRight,inputBottomLeft:inputBottomLeft,inputTopRight:inputTopRight,inputTopLeft:inputTopLeft){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}