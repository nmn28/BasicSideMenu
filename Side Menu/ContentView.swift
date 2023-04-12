//
//  ContentView.swift
//  Side Menu
//
//  Created by Nicholas Nelson on 4/6/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowing = false
    
    var body: some View {
        NavigationView {
            ZStack {
                if isShowing {
                    SideMenuView(isShowing: $isShowing)
                }
                HomeView()
                    .cornerRadius(isShowing ? 20: 10)
                    .offset(x: isShowing ? 275: 0, y: isShowing ? 44 : 0)
                    .scaleEffect(isShowing ? 0.8: 1)
                    
                    .navigationTitle("Home")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button(action: {
                                withAnimation(.spring()) {
                                    isShowing.toggle()
                                }
                            }, label: {
                                Image(systemName: "list.bullet")
                                    .foregroundColor(.black)
                            }
                            )}
                        ToolbarItem(placement: .navigationBarTrailing) {
                            NavigationLink {
                                SettingsView()
                            } label: {
                                Image(systemName: "gear")
                            }
                            }
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Image(systemName: "magnifyingglass")
                        }
                    }
                }
            }
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    struct HomeView: View {
        var body: some View {
            ZStack {
                Color(.white)
                
                Text("Hello World")
            }
        }
    }
