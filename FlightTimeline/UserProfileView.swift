//
//  UserProfileView.swift
//  FlightTimeline
//
//  Created by Артём Латушкин on 22.06.2023.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        Image(systemName: "person.circle")
            .resizable()
            .frame(width: 150, height: 150)
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
