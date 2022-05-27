//
//  ContentView.swift
//  NewProject
//
//  Created by paramroop kaur on 05/04/22.
//

import SwiftUI

let storedEmail = "Paramroop"
let storedPassword = "abcd"

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var selection: String? = nil
    @State var authenticationDidFail : Bool = false
    @State var authenticationDidSucceed : Bool = false
    
    var body: some View {
        NavigationView {
        ZStack{
            Color.blue
                .ignoresSafeArea()
            Circle()
                .scale(1.7)
                .foregroundColor(.white.opacity(0.15))
            Circle()
                .scale(1.35)
                .foregroundColor(.white)
            
            VStack {
                HelloText()
                UsernameTextField(username: $email)
                PasswordSecureField(password: $password)
                Button( action: {}, label: {
                    Text("Forget Password?")
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                        
                })
                
                if authenticationDidFail {
                    Text("Information not correct. Try Again!")
                        .padding()
                        .offset(y : -10)
                        .foregroundColor(.red)
                }
                if authenticationDidSucceed {
                  
                        Text("hey login suceeded")
                            .padding()
                            .font(.headline)
                            .frame(width: 250, height: 60)
                            .background(Color.green)
                            .cornerRadius(20.0)
                }
                Button(action : {
                    if self.email == storedEmail && self.password == storedPassword {
                        self.authenticationDidSucceed = true
                        self.authenticationDidFail = false
                    } else {
                        self.authenticationDidFail = true
                        self.authenticationDidSucceed = false
                    }
                  
                }) {
                    LoginButtonContent()
                    
                }
                .padding()
                
           
               NavigationLink(destination: Text("Fill the details"), tag: "B", selection: $selection) { EmptyView() }
                               Button("Sign Up") {
                                    selection = "B"
                                        
                                }
               
            }
            .padding()
         
        }
    }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct hye: View {
    var body: some View {
        Text("Hello There !!")
            .font(.largeTitle)
            .bold()
            .padding()
    }
}


struct HelloText: View {
    var body: some View {
        Text("Hello There !!")
            .font(.largeTitle)
            .bold()
            .padding()
    }
}

struct LoginButtonContent: View {
    var body: some View {
        Text("LOGIN")
        
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color.blue)
            .cornerRadius(10)
            }
}

struct UsernameTextField: View {
    @Binding var username : String
    
    var body: some View {
        TextField("iam@email.com", text: self.$username)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color.black.opacity(0.05))
            .cornerRadius(10)
    }
}

struct PasswordSecureField: View {
    @Binding var password : String
    var body: some View {
        SecureField("Password", text: self.$password)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color.black.opacity(0.05))
            .cornerRadius(10)
          
           
    }
}
