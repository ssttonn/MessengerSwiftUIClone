//
//  ChatView.swift
//  MessengerClone
//
//  Created by sstonn on 27/7/24.
//

import SwiftUI

struct ChatView: View {
    @State private var message = ""
    
    var body: some View {
        VStack {
            ScrollView {
                // header
                VStack(spacing: 4) {
                    CircularProfileImageView(
                        image: User.MOCK_USER.profileImage,
                        size: .xlarge
                    )
                    Text("Steve")
                        .font(.title3)
                        .fontWeight(.semibold)
                    Text("Messenger")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                
                
                //messages
                ForEach(0...10, id: \.self) { _ in
                    ChatMessageCell(isFromCurrentUser: Bool.random())
                }
            }
            Spacer()
            ZStack(alignment: .trailing) {
                TextField("Message...", text: $message)
                    .padding(12)
                    .padding(.trailing, 48)
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                    .font(.subheadline)
                
                Button {
                    // send message
                } label: {
                    Image(systemName: "paperplane.fill")
                        .font(.title2)
                }
                .padding(.trailing, 12)
            }
            .padding()
        }
    }
}

#Preview {
    ChatView()
}
