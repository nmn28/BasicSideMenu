//
//  SideMenuSocialsView.swift
//  Side Menu
//
//  Created by Nicholas Nelson on 4/9/23.
//

import SwiftUI

struct SideMenuSocialsView: View {
    var body: some View {
        HStack(alignment: .center) {
            Link(destination: URL(string: "https://www.youtube.com/")!) {
                Image("youtube-play-button-fill")
                    .frame(width: 45, height: 24)
                    .font(.system(size: 28, weight: .regular))
                 }
            Link(destination: URL(string: "https://www.instagram.com/")!) {
                Image("instagram")
                    .frame(width: 45, height: 24)
                    .font(.system(size: 28, weight: .regular))
            }
            Link(destination: URL(string: "https://www.twitter.com/")!) {
                Image("twitter-fill")
                    .frame(width: 45, height: 24)
                    .font(.system(size: 28, weight: .regular))
            }
            Link(destination: URL(string: "https://www.facebook.com/")!) {
                Image("facebook-circle-fill")
                    .frame(width: 45, height: 24)
                    .font(.system(size: 28, weight: .regular))
            }
            Link(destination: URL(string: "https://www.linkedin.com/")!) {
                Image("linkedin-fill")
                    .frame(width: 45, height: 24)
                    .font(.system(size: 28, weight: .regular))
            }
        }
        .foregroundColor(.red)
        .padding()
        
    }
}

struct SideMenuSocialsView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuSocialsView()
    }
}
