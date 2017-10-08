import Foundation

extension UIImage{ 
/// Nine Part Tiled
///
/// - Parameters
///   - Parameter inputBreakpoint0: Lower left corner of image to retain before tiling begins.
///   - Parameter inputBreakpoint1: Upper right corner of image to retain after tiling ends.
///   - Parameter inputFlipYTiles: Indicates that Y-Axis flip should occur.
///   - Parameter inputGrowAmount: 
/// -  Returns: The filtered image or nil
	func ninePartTiled(inputBreakpoint0:CIVector,inputBreakpoint1:CIVector,inputFlipYTiles:Double = 1,inputGrowAmount:CIVector)->UIImage?{ 
		if let filter = CIFilter.ninePartTiled(inputBreakpoint0:inputBreakpoint0,inputBreakpoint1:inputBreakpoint1,inputFlipYTiles:inputFlipYTiles,inputGrowAmount:inputGrowAmount){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}