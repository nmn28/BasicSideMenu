//
//  SideMenuOptionView.swift
//  Side Menu
//
//  Created by Nicholas Nelson on 4/6/23.
//

import SwiftUI

struct SideMenuOptionView: View {
    let viewModel1: SideMenuViewModel
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: viewModel1.imageName)
                .frame(width: 24, height: 24)
            
            Text(viewModel1.title)
                .font(.system(size: 24, weight: .semibold))
                .frame(width: .infinity, alignment: .leading)
                
            Spacer()
        }
        .foregroundColor(.white)
        .padding()
        .offset(x: UIScreen.main.bounds.width*0.03)
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView(viewModel1: .premium)
    }
}

