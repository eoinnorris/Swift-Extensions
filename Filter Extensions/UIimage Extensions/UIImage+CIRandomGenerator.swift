import Foundation

extension UIImage{ 
/// Random Generator
///
/// - Parameters

/// -  Returns: The filtered image or nil
	func randomGenerator()->UIImage?{ 
		if let filter = CIFilter.randomGenerator(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}