//
//  LoginView.swift
//  ToDoList
//
//  Created by Nick Lavrov on 26.09.2023.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView() {
            VStack {
                // Header
                HeaderView(title: "ToDo List", subtitle: "Get things done", angle: 15, background: Color.pink)
                // Login Form
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    TextField("Email", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log In", background: Color.blue) {
                        viewModel.login()
                    }
                    .padding()
                }
                .offset(y: -50)
                // Create Account
                VStack {
                    Text("Not registered?")
                    NavigationLink("Create An Account", destination: RegisterView())
                    
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
