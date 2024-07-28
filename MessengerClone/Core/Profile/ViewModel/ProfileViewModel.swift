//
//  ProfileViewModel.swift
//  MessengerClone
//
//  Created by sstonn on 27/7/24.
//

import SwiftUI
import PhotosUI

class ProfileViewModel: ObservableObject {
    @Published var selectedItem: PhotosPickerItem? {
        didSet {
            Task.detached { [weak self] in
                guard let self else {return}
                try await loadImage()
            }
        }
    }
    
    @Published var profileImage: Image?
    
    func loadImage() async throws {
        guard let item = selectedItem else {return}
        guard let imageData = try? await item.loadTransferable(type: Data.self) else {return}
        
        let image = Image(uiImage: UIImage(data: imageData)!)
        
        profileImage = image
    }
}
