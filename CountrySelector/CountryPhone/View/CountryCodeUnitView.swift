//
//  CountryRow.swift
//  CountrySelector
//
//  Created by Vika Matveeva on 16.11.2020.
//

import SwiftUI

struct CountryCodeUnitView: View {
	var countryInfo: CountryCodeDTO

    var body: some View {
		HStack {
			Text("\(countryInfo.alpha2Code.flag())")
			Text("\(countryInfo.name)")
			Spacer()
			Text("+\(countryInfo.callingCodes.first ?? "")").foregroundColor(.secondary)
		}.background(Color.white)
		.font(.system(size: 20))
	}
}
