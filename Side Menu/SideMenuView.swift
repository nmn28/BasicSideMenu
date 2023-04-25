//
//  SideMenuView.swift
//  Side Menu
//
//  Created by Nicholas Nelson on 4/6/23.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack(alignment: .bottom) {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    SideMenuHeaderView(isShowing: $isShowing)
                        .foregroundColor(.white)
                        .frame(height: 130)
                    
                    ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                        NavigationLink(
                            destination: (option.destination),
                            label: {
                                SideMenuOptionView(viewModel1: option)
                            })
                        
                    }
                    Spacer()
                    
                }
            }.padding(.bottom, 50)
            VStack {
                SideMenuSocialsView()
            }
            
        }.navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
