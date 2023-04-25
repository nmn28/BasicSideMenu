//
//  NewsletterView.swift
//  Side Menu
//
//  Created by Nicholas Nelson on 4/10/23.
//

import SwiftUI

struct NewsletterView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("This company is about")
            }
            .navigationTitle("About")
        }
    }
}
struct NewsletterView_Previews: PreviewProvider {
    static var previews: some View {
        NewsletterView()
    }
}
