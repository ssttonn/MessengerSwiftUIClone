//
//  ProfileView.swift
//  MessengerClone
//
//  Created by sstonn on 24/7/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(Color(.systemGray4))
                Text("Steve")
                    .font(.title2)
                    .fontWeight(.semibold)
            }
            
            List {
                Section {
                    ForEach (SettingOptionsViewModel.allCases, id: \.self) { option in
                        HStack {
                            Image(systemName: option.iconName)
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(option.iconBackgroundColor)
                            Text(option.title)
                                .font(.subheadline)
                        }
                    }
                }
                Section {
                    Button("Log Out") {
                    }
                    Button("Delete Account") {
                        
                    }
                }.foregroundColor(.red)
            }
        }
    }
}

#Preview {
    ProfileView()
}
