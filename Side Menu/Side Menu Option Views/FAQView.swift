//
//  FAQView.swift
//  Side Menu
//
//  Created by Nicholas Nelson on 4/11/23.
//

import SwiftUI

struct FAQView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("This company is about")
            }
            .navigationTitle("About")
        }
    }
}
struct FAQView_Previews: PreviewProvider {
    static var previews: some View {
        FAQView()
    }
}
