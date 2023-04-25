//
//  SettingsView.swift
//  Side Menu
//
//  Created by Nicholas Nelson on 4/10/23.
//

import SwiftUI

struct NotificationsView: View {
    var sampleModels = NotificationsViewModel.examples2
        
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(sampleModels) { item in
                        NotificationOptionView(model: item)
                    }
                }
                .padding()
            }
        }
            
    }
}

    struct NotificationsView_Previews: PreviewProvider {
        static var previews: some View {
           NotificationsView()
        }
    }
    

