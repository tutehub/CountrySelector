//
//  CountryCodeList.swift
//  CountrySelector
//
//  Created by Vika Matveeva on 16.11.2020.
//

import SwiftUI

struct CountryCodeListView: View {
	@ObservedObject var model: CountryCodeViewModel

    var body: some View {
		List(model.countryCodes, id: \.id) { country in
			CountryCodeUnitView(countryInfo: country)
				.onTapGesture {
					model.selectedCountryCode = country
				}
		}
    }
}
