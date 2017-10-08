import Foundation

extension UIImage{ 
/// Area Min and Max Red
///
/// - Parameters
///   - Parameter inputExtent: A rectangle that specifies the subregion of the image that you want to process.
/// -  Returns: The filtered image or nil
	func areaMinMaxRed(inputExtent:CIVector)->UIImage?{ 
		if let filter = CIFilter.areaMinMaxRed(inputExtent:inputExtent){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}