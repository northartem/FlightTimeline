//
//  FlightBoardView.swift
//  FlightTimeline
//
//  Created by Артём Латушкин on 22.06.2023.
//

import SwiftUI

struct FlightBoardView: View {
    @State private var hiddenCanceled = false
    
    let boardName: String
    let flightInfo: [FlightInformation]
    
    private var showFlight: [FlightInformation] {
        hiddenCanceled
        ? flightInfo.filter { $0.status != .cancelled }
        : flightInfo
    }
    
    var body: some View {
        List(showFlight) { flight in
            FlightRowView(flight: flight)
        }
        .listStyle(.plain)
        .navigationTitle(boardName)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Toggle("Hight canceled", isOn: $hiddenCanceled)
            }
        }
    }
}

struct FlightBoardView_Previews: PreviewProvider {
    static var previews: some View {
        FlightBoardView(boardName: "Flight Board", flightInfo: FlightInformation.generateFlights())
    }
}
