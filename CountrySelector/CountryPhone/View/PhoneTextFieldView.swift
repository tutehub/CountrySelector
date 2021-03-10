//
//  PhoneTextField.swift
//  CountrySelector
//
//  Created by Vika Matveeva on 10.11.2020.
//

import SwiftUI

struct PhoneTextFieldView: View {
	@Binding var countryPhone: CountryCodeDTO

	var body: some View {
		ZStack {
            HStack (spacing: 0) {
                Text( "\(countryPhone.alpha2Code.flag()) +\(countryPhone.callingCodes[0])" as String)
				   .frame(width: 80, height: 50)
				   .background(Color.secondary.opacity(0.2))
				   .cornerRadius(10)
   
        
                TextField("000-00-00", text: .constant(""))
				   .padding()
				   .frame(width: 200, height: 50)
				   .keyboardType(.phonePad)
		   }.padding()

		   RoundedRectangle(cornerRadius: 10).stroke()
		   .frame(width: 280, height: 50)
		}
	}
}
