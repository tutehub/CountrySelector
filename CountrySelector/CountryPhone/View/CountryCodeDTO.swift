//
//  CountryPhoneEntity.swift
//  CountrySelector
//
//  Created by Vika Matveeva on 10.11.2020.
//

import Foundation

struct CountryCodeDTO: Codable, Identifiable {
	let id: UUID = UUID()
	var name: String
	var alpha2Code: String
	let callingCodes: [String]
}
