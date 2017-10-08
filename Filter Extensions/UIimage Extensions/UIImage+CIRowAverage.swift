import Foundation

extension UIImage{ 
/// Row Average
///
/// - Parameters
///   - Parameter inputExtent: A rectangle that specifies the subregion of the image that you want to process.
/// -  Returns: The filtered image or nil
	func rowAverage(inputExtent:CIVector)->UIImage?{ 
		if let filter = CIFilter.rowAverage(inputExtent:inputExtent){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}