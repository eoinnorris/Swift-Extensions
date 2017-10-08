import Foundation

extension UIImage{ 
/// Area Minimum Alpha
///
/// - Parameters
///   - Parameter inputExtent: A rectangle that specifies the subregion of the image that you want to process.
/// -  Returns: The filtered image or nil
	func areaMinimumAlpha(inputExtent:CIVector)->UIImage?{ 
		if let filter = CIFilter.areaMinimumAlpha(inputExtent:inputExtent){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}