//
//  ContactView.swift
//  Side Menu
//
//  Created by Nicholas Nelson on 4/11/23.
//

import SwiftUI

struct ContactView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("This company is about")
            }
            .navigationTitle("About")
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
