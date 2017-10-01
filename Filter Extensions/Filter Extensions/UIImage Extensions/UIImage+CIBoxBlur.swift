import CocoaTouch

extension UIImage{ 

	func boxBlur(inputRadius:Double = 10)->UIImage?{ 
		if let filter = CIFilter.boxBlur(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}