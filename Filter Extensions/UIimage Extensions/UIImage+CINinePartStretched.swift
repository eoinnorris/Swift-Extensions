import Foundation

extension UIImage{ 

	func ninePartStretched(inputBreakpoint0:CIVector,inputBreakpoint1:CIVector,inputGrowAmount:CIVector)->UIImage?{ 
		if let filter = CIFilter.ninePartStretched(inputBreakpoint0:inputBreakpoint0,inputBreakpoint1:inputBreakpoint1,inputGrowAmount:inputGrowAmount){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}