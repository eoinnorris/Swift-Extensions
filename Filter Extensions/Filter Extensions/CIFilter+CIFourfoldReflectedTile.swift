import Foundation

extension CIFilter{ 

	class func fourfoldReflectedTile(inputCenter:CIVector,inputAcuteAngle:CGColorSpace,inputAngle:Double = 0,inputWidth:Double = 100)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIFourfoldReflectedTile"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputAcuteAngle, forKey:"inputAcuteAngle")
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputWidth, forKey:"inputWidth")
			result = filter
		}
		return result
	}
}
