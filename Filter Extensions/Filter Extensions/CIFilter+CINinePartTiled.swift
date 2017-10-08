import Foundation

extension CIFilter{ 
/// Nine Part Tiled
///
/// - Parameters
///   - Parameter inputBreakpoint0: Lower left corner of image to retain before tiling begins.
///   - Parameter inputBreakpoint1: Upper right corner of image to retain after tiling ends.
///   - Parameter inputFlipYTiles: Indicates that Y-Axis flip should occur.
///   - Parameter inputGrowAmount: 
/// -  Returns: The filtered image or nil
	class func ninePartTiled(inputBreakpoint0:CIVector,inputBreakpoint1:CIVector,inputFlipYTiles:Double = 1,inputGrowAmount:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CINinePartTiled"){ 
			filter.setValue(inputBreakpoint0, forKey:"inputBreakpoint0")
			filter.setValue(inputBreakpoint1, forKey:"inputBreakpoint1")
			filter.setValue(inputFlipYTiles, forKey:"inputFlipYTiles")
			filter.setValue(inputGrowAmount, forKey:"inputGrowAmount")
			result = filter
		}
		return result
	}
}
