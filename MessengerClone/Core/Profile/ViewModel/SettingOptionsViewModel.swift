//
//  SettingOptionsViewModel.swift
//  MessengerClone
//
//  Created by sstonn on 24/7/24.
//

import Foundation
import SwiftUI

enum SettingOptionsViewModel: Int, CaseIterable, Identifiable {
    case darkMode
    case activeStatus
    case accessibility
    case privacy
    case notifications
    
    var title: String {
        switch self {
            case .darkMode: return "Dark Mode"
            case .activeStatus: return "Active Status"
            case .accessibility: return "Accessibility"
            case .privacy: return "Privacy"
            case .notifications: return "Notifications"
        }
    }
    
    var iconName: String {
        switch self {
        case .darkMode: return "moon.circle.fill"
        case .activeStatus: return "bolt.circle.fill"
        case .accessibility: return "figure.walk.circle.fill"
        case .privacy: return "lock.circle.fill"
        case .notifications: return "bell.circle.fill"
        }
    }
    
    var iconBackgroundColor: Color {
        switch self {
        case .darkMode: return .purple
        case .activeStatus: return .green
        case .accessibility: return .blue
        case .privacy: return .red
        case .notifications: return .orange
        }
    }
    
    var id: Int {
        return rawValue
    }
    
    
}
