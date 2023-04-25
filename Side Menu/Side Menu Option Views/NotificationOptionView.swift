//
//  NotificationOptionView.swift
//  Side Menu
//
//  Created by Nicholas Nelson on 4/16/23.
//

import SwiftUI

struct NotificationOptionView: View {
    @State var model: NotificationsViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(model.title)
                Image(systemName: model.imageName)
                Toggle(isOn: $model.isToggled) {
                    
                }
            }
            
            NavigationLink {
                model.viewToCall.destinationView
            } label: {
                Text("Learn more")
            }
                
               
            }
        .padding()
        }
        
    }



struct NotificationOptionView_Previews: PreviewProvider {
    static let newModel = NotificationsViewModel(title: "Notification", imageName: "gear", isToggled: false, destination: .notif1)
    
    static var previews: some View {
        NotificationOptionView(model: newModel)
    }
}
