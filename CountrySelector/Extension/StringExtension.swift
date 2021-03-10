//
//  StringExtension.swift
//  CountrySelector
//
//  Created by Vika Matveeva on 16.11.2020.
//

import Foundation

extension String {
	func flag() -> String {
		let base : UInt32 = 127397
		var flag = ""
		for v in self.unicodeScalars {
			flag.unicodeScalars.append(UnicodeScalar(base + v.value)!)
		}
		return flag
	}
}
