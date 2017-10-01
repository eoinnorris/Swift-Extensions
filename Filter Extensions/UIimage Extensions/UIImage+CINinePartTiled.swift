import Foundation

extension UIImage{ 

	func ninePartTiled(inputBreakpoint0:CIVector,inputBreakpoint1:CIVector,inputFlipYTiles:Double = 1,inputGrowAmount:CIVector)->UIImage?{ 
		if let filter = CIFilter.ninePartTiled(inputBreakpoint0:inputBreakpoint0,inputBreakpoint1:inputBreakpoint1,inputFlipYTiles:inputFlipYTiles,inputGrowAmount:inputGrowAmount){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}