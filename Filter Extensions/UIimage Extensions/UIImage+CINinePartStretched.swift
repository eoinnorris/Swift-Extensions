import Foundation

extension UIImage{ 
/// Nine Part Stretched
///
/// - Parameters
///   - Parameter inputBreakpoint0: Lower left corner of image to retain before stretching begins.
///   - Parameter inputBreakpoint1: Upper right corner of image to retain after stretching ends.
///   - Parameter inputGrowAmount: 
/// -  Returns: The filtered image or nil
	func ninePartStretched(inputBreakpoint0:CIVector,inputBreakpoint1:CIVector,inputGrowAmount:CIVector)->UIImage?{ 
		if let filter = CIFilter.ninePartStretched(inputBreakpoint0:inputBreakpoint0,inputBreakpoint1:inputBreakpoint1,inputGrowAmount:inputGrowAmount){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}