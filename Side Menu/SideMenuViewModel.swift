//
//  SideMenuViewModel.swift
//  Side Menu
//
//  Created by Nicholas Nelson on 4/6/23.
//

import SwiftUI
import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case settings
    case about
    case premium
    case newsletter
    case events
    case shop
    case donate
    case faq
    case contact
    
    var title: String {
        switch self {
        case .settings: return "Settings"
        case .about: return "About"
        case .premium: return "Premium"
        case .newsletter: return "Newsletter"
        case .events: return "Events"
        case .shop: return "Shop"
        case .donate: return "Donate"
        case .faq: return "FAQ"
        case .contact: return "Contact"
        }
    }
    
    var imageName: String {
        switch self {
        case .settings: return "gear"
        case .about: return "scale.3d"
        case .premium: return "star.fill"
        case .newsletter: return "newspaper.fill"
        case .events: return "balloon.2.fill"
        case .shop: return "cart.fill"
        case .donate: return "dollarsign"
        case .faq: return "questionmark"
        case .contact: return "envelope.fill"
        }
    }
    
   
    @ViewBuilder var destination: some View {
        switch self {
        case .settings: SettingsView()
        case .about: AboutView()
        case .premium: PremiumView()
        case .newsletter: NewsletterView()
        case .events: EventsView()
        case .shop: ShopView()
        case .donate: DonateView()
        case .faq: FAQView()
        case .contact: ContactView()
        
        }
    }
}
