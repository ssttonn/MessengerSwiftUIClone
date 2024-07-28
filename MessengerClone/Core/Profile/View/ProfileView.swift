//
//  ProfileView.swift
//  MessengerClone
//
//  Created by sstonn on 24/7/24.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
    let user: User
    @StateObject var viewModel = ProfileViewModel()
    
    var body: some View {
        VStack {
            VStack {
                PhotosPicker(selection: $viewModel.selectedItem) {
                    let image = viewModel.profileImage ?? user.profileImage
                    
                    CircularProfileImageView(
                        image: image,
                        size: .large
                    )
                }
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
    ProfileView(user: User.MOCK_USER)
}
