//
//  SignUpView.swift
//  MessengerClone
//
//  Created by sstonn on 9/7/24.
//

import SwiftUI

struct SignUpView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullName = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            Image("messenger_logo")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
            VStack {
                TextField("Enter your email", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                
                TextField("Enter your full name", text: $fullName)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                
                SecureField("Enter your password", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            Button {
                
            } label: {
                Text("Sign up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
                    .padding(.vertical)
            }
            Spacer()
            
            Divider()
            HStack {
                Text("Already have an account?")
                    .font(.footnote)
                    .foregroundColor(.gray)
                
                Button {
                    dismiss()
                } label: {
                    Text("Login")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                }
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    SignUpView()
}
