import Foundation

extension CIFilter{ 
/// Perspective Tile
///
/// - Parameters
///   - Parameter inputBottomRight: The bottom right coordinate of a tile.
///   - Parameter inputBottomLeft: The bottom left coordinate of a tile.
///   - Parameter inputTopRight: The top right coordinate of a tile.
///   - Parameter inputTopLeft: The top left coordinate of a tile.
/// -  Returns: The filtered image or nil
	class func perspectiveTile(inputBottomRight:CIVector,inputBottomLeft:CIVector,inputTopRight:CIVector,inputTopLeft:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPerspectiveTile"){ 
			filter.setValue(inputBottomRight, forKey:"inputBottomRight")
			filter.setValue(inputBottomLeft, forKey:"inputBottomLeft")
			filter.setValue(inputTopRight, forKey:"inputTopRight")
			filter.setValue(inputTopLeft, forKey:"inputTopLeft")
			result = filter
		}
		return result
	}
}
