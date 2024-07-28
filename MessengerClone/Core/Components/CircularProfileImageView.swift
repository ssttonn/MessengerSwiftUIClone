//
//  CircularProfileImageView.swift
//  MessengerClone
//
//  Created by sstonn on 27/7/24.
//

import SwiftUI

extension User {
    var profileImage: Image? {
        guard let profileImageUrl else {return nil}
        return Image(profileImageUrl)
    }
}

enum ProfileImageSize {
    case xxsmall
    case xsmall
    case small
    case medium
    case large
    case xlarge
    case xxlarge
    
    var dimension: CGFloat {
        switch self {
        case .xxsmall: return 28
        case .xsmall: return 32
        case .small: return 40
        case .medium: return 56
        case .large: return 64
        case .xlarge: return 80
        case .xxlarge: return 120
        }
    }
    
    
}

struct CircularProfileImageView: View {
    let image: Image?
    let size: ProfileImageSize
    
    var body: some View {
        (image ?? Image(systemName: "person.circle.fill"))
            .resizable()
            .scaledToFill()
            .frame(width: size.dimension, height: size.dimension)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView(
        image: User.MOCK_USER.profileImage,
        size: .medium
    )
}
