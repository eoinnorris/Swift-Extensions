import Foundation

extension UIImage{ 

	func fourfoldTranslatedTile(inputCenter:CIVector,inputAcuteAngle:CGColorSpace,inputAngle:Double = 0,inputWidth:Double = 100)->UIImage?{ 
		if let filter = CIFilter.fourfoldTranslatedTile(inputCenter:inputCenter,inputAcuteAngle:inputAcuteAngle,inputAngle:inputAngle,inputWidth:inputWidth){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}