//
//  SearchView.swift
//  Side Menu
//
//  Created by Nicholas Nelson on 4/11/23.
//

import SwiftUI


struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .searchable(text: $searchText)
                .padding()
        
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
