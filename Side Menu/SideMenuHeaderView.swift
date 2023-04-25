//
//  SideMenuHeaderView.swift
//  Side Menu
//
//  Created by Nicholas Nelson on 4/6/23.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            Button(action: {
                withAnimation(.spring()) {
                    isShowing.toggle()
                }
            }, label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .font(.system(size: 22, weight: .bold))
                    .padding()
            })
            VStack(alignment: .center) {
                Image(systemName: "apple.logo")
                    .resizable()
                    .scaledToFit()
                    .clipped()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                    .padding(.bottom, 2)
                
                Text("Company Name")
                    .font(.system(size: 24, weight: .semibold))
                
                Text("More text")
                
                HStack(spacing: 4) {
                    HStack(spacing: 4) {
                        
                    }
                    Spacer()
                    
                }
                Spacer()
            }.padding()
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
