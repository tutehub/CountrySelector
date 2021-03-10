//
//  CountryPhoneViewModel.swift
//  CountrySelector
//
//  Created by Vika Matveeva on 12.11.2020.
//

import Foundation
import Combine
import Alamofire

class CountryCodeViewModel: ObservableObject {
	@Published var countryCodes: [CountryCodeDTO] = []
	@Published var selectedCountryCode: CountryCodeDTO

	private var cancellables = [AnyCancellable]()


	init() {
		self.selectedCountryCode = CountryCodeDTO(name: "Isle of Man", alpha2Code: "IM", callingCodes: ["44"])
		fetchCallingCodes()
	}

    
	private func fetchCallingCodes() {
        let publisher: AnyPublisher<[CountryCodeDTO], AFError> = AF.request("https://ios.jobyme88.com/country-code.json").publishDecodable(type: [CountryCodeDTO].self)
            .value()
        
        publisher
			.mapError({ (error) -> Error in
						print(error)
						return error
					})
			.sink(receiveCompletion: { _ in } ) { (codes) in
				self.countryCodes = codes
			}
			.store(in: &cancellables)
	}
}
