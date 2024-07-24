//
//  LoginView.swift
//  MessengerClone
//
//  Created by sstonn on 9/7/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
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

                    SecureField("Enter your password", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                Button{
                    print("Forgot password")
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.horizontal)
                
                Button {
                    print("Handle login")
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(10)
                        .padding(.vertical)
                }
                
                HStack {
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                }
                .foregroundColor(.gray)
                
                HStack {
                    Image("facebook_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                }
                .padding(.top, 8)
                Spacer()
                Divider()
                HStack(spacing: 3) {
                    Text("Don't have an account?")
                        .foregroundColor(.gray)
                    
                    NavigationLink {
                        SignUpView()
                            .navigationBarBackButtonHidden()
                    } label: {
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                }
                .font(.footnote)
                .padding(.vertical)
            }
            
        }
        
    }
}

#Preview {
    LoginView()
}
