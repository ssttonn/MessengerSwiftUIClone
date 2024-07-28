//
//  ChatMessageCell.swift
//  MessengerClone
//
//  Created by sstonn on 27/7/24.
//

import SwiftUI

struct ChatMessageCell: View {
    let isFromCurrentUser: Bool
    
    var body: some View {
        HStack(alignment: .bottom) {
            if isFromCurrentUser {
                Spacer()
                Text("Very long message here, just to test the chat bubble Very long message here, just to test the chat bubble.")
                    .font(.subheadline)
                    .padding()
                    .background(Color(.systemBlue))
                    .foregroundColor(.white)
                    .clipShape(ChatBubble(isFromCurrentUser: true))
                    .frame(maxWidth: UIScreen.main.bounds.width * 0.7, alignment: .trailing)
            } else {
                CircularProfileImageView(
                    image: User.MOCK_USER.profileImage,
                    size: .small
                )
                Text("Very long message here, just to test the chat bubble Very long message here, just to test the chat bubble.")
                    .font(.subheadline)
                    .padding()
                    .background(Color(.systemGray5))
                    .foregroundColor(.black)
                    .clipShape(ChatBubble(isFromCurrentUser: false))
                    .frame(maxWidth: UIScreen.main.bounds.width * 0.7, alignment: .leading)
                Spacer()
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    ChatMessageCell(isFromCurrentUser: true)
}
