import Foundation

extension UIImage{ 
/// Area Average
///
/// - Parameters
///   - Parameter inputExtent: A rectangle that specifies the subregion of the image that you want to process.
/// -  Returns: The filtered image or nil
	func areaAverage(inputExtent:CIVector)->UIImage?{ 
		if let filter = CIFilter.areaAverage(inputExtent:inputExtent){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
