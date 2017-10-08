import Foundation

extension UIImage{ 
/// Area Maximum
///
/// - Parameters
///   - Parameter inputExtent: A rectangle that specifies the subregion of the image that you want to process.
/// -  Returns: The filtered image or nil
	func areaMaximum(inputExtent:CIVector)->UIImage?{ 
		if let filter = CIFilter.areaMaximum(inputExtent:inputExtent){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}