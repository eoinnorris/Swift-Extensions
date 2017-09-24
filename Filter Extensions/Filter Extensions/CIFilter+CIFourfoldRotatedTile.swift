import Cocoa

extension CIFilter{ 

	class func fourfoldRotatedTile(inputCenter:CIVector,inputAngle:Double = 0,inputWidth:Double = 100)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIFourfoldRotatedTile"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputWidth, forKey:"inputWidth")
			result = filter
		}
		return result
	}
}