//
//  CountryPhoneView.swift
//  CountrySelector
//
//  Created by Vika Matveeva on 12.11.2020.
//

import SwiftUI

struct CountryCodeView: View {
	@ObservedObject var model = CountryCodeViewModel()


    var body: some View {
        VStack {
            PhoneTextFieldView(countryPhone: $model.selectedCountryCode)
        
            CountryCodeListView(model: model)
        }
		
    }
}
