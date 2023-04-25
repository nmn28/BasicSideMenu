//
//  AboutView.swift
//  Side Menu
//
//  Created by Nicholas Nelson on 4/10/23.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("This company is about")
                    .padding(.top)
                    .padding(.leading)
            
                Spacer()
            }
            .navigationTitle("About")
            
            
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
