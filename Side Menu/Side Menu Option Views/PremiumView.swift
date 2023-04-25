//
//  PremiumView.swift
//  Side Menu
//
//  Created by Nicholas Nelson on 4/10/23.
//

import SwiftUI

struct PremiumView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("This company is about")
            }
            .navigationTitle("Premium")
        }
    }
}

struct PremiumView_Previews: PreviewProvider {
    static var previews: some View {
        PremiumView()
    }
}
