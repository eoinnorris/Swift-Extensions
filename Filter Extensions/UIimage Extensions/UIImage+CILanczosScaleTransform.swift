import Foundation

extension UIImage{ 

	func lanczosScaleTransform(inputAspectRatio:Double = 1,inputScale:Double = 1)->UIImage?{ 
		if let filter = CIFilter.lanczosScaleTransform(inputAspectRatio:inputAspectRatio,inputScale:inputScale){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}