import Foundation

extension UIImage{ 
/// Area Minimum
///
/// - Parameters
///   - Parameter inputExtent: A rectangle that specifies the subregion of the image that you want to process.
/// -  Returns: The filtered image or nil
	func areaMinimum(inputExtent:CIVector)->UIImage?{ 
		if let filter = CIFilter.areaMinimum(inputExtent:inputExtent){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}