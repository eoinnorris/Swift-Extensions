import Foundation

extension CIFilter{ 

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
