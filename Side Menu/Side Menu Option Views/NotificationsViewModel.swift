//
//  NotificationsViewModel.swift
//  Side Menu
//
//  Created by Nicholas Nelson on 4/15/23.
//

import SwiftUI

class NotificationsViewModel: ObservableObject, Identifiable {
    
    @Published var title: String
    @Published var imageName: String
    @Published var isToggled: Bool
        //@Published var description: String
    @Published var viewToCall: destination
    
    
    init(title: String, imageName: String, isToggled: Bool, destination: destination) {
        self.title = title
        self.imageName = imageName
        self.isToggled = isToggled
            //self.description = description
        self.viewToCall = destination
    }
}

extension NotificationsViewModel {
    static let examples2: [NotificationsViewModel] = [
        .init(title: "Notification 1", imageName: "gear", isToggled: false, destination: .notif1),
        .init(title: "Notification 2", imageName: "wrench.adjustable", isToggled: true, destination: .notif2),
        //.init(title: "Notification3", imageName: "gear", isToggled: false, description: "Description for 3rd notification"),
        
        
    ]
}


enum destination {
    case notif1
    case notif2
    
    @ViewBuilder var destinationView: some View {
        switch self {
        case .notif1: N1View()
        case .notif2: N2View()
        }
    }
}
