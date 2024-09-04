//
//  ContentView.swift
//  SPEEM
//
//  Created by Wassim Mansouri on 02/09/2024.
//

import SwiftUI

struct LoginView: View {
    @State var isLoginMode = false
    @State var username = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 16) {
                    Picker(selection: $isLoginMode, label: Text("Picker here")) {
                        Text("Login").tag(true)
                        Text("Create account").tag(false)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    
                    if !isLoginMode {
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "person.fill")
                                .font(.system(size: 64))
                                .padding()
                        })
                        
                        TextField("Username", text: $username)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(.roundedBorder)
                    
                    
                    Button(action: {
                        handleLogin()
                    }, label: {
                        Text(isLoginMode ? "Login" : "Create account")
                    })
                    .buttonStyle(.borderedProminent)
                }
                .padding()
            }
            .navigationTitle(isLoginMode ? "Login": "Create account")
        }
    }
    
    private func handleLogin() {
        if isLoginMode {
            login()
        } else {
            createNewAccount()
        }
    }
    
    private func createNewAccount() {
        print("Creating a new account")
    }
    
    private func login() {
        print("Logging in..")
    }
}

#Preview {
    LoginView()
}
