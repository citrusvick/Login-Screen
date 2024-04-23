//
//  ContentView.swift
//  Q2Midterm
//
//  Created by Mushik, Victoria on 3/28/24.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var usernameInvalid = 0
    @State private var passwordInvalid = 0
    @State private var accessSignUp = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.cyan
                    .ignoresSafeArea()
                Rectangle()
                    .aspectRatio(0.75, contentMode:.fit)
                    .foregroundColor(.white.opacity(0.30))
                Rectangle()
                    .aspectRatio(1, contentMode: .fit)
                    .foregroundColor(.white.opacity(0.70))
                    Spacer()
                
                VStack {
                    Text("Login")
                        .foregroundStyle(.orange.gradient)
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .border(.gray)
                        .background(Color.gray.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(usernameInvalid))
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .border(.gray)
                        .background(Color.gray.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(passwordInvalid))
                    
                    Button("Login") {
                        //code to authenticate user using firebase
                    }
                    .padding()
                    .foregroundColor(.white)
                    .frame(width: 100, height: 50)
                    .background(Color.orange)
                    .cornerRadius(10)
                    .padding()
                    
                    Button("Not a user yet? Sign Up") {
                        accessSignUp = true
                    }
                    .padding()
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue.opacity(0.50))
                    .cornerRadius(10)
                    
                    .navigationDestination(isPresented: $accessSignUp) {
                        Text("You are logged in")
                      }
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }

#Preview {
    ContentView()
}
