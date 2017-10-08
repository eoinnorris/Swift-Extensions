import Foundation

extension UIImage{ 
/// Column Average
///
/// - Parameters
///   - Parameter inputExtent: A rectangle that specifies the subregion of the image that you want to process.
/// -  Returns: The filtered image or nil
	func columnAverage(inputExtent:CIVector)->UIImage?{ 
		if let filter = CIFilter.columnAverage(inputExtent:inputExtent){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}