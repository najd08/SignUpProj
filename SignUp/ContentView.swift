//
//  ContentView.swift
//  SignUp
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var bio: String = ""
    @State private var education: String = ""
    @State private var skills: String = ""
    @State private var showingAlert: Bool = false

    var body: some View {
        VStack {
            Text("Sign Up Page")
                .font(.largeTitle)
                .bold()
                .padding(.top, 10)
                .padding(.bottom, 60)

            VStack(alignment: .leading, spacing: 16) {
                // Name
                TextField("Name", text: $name)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .textInputAutocapitalization(.words)

                // Email
                TextField("Email", text: $email)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .textInputAutocapitalization(.none)
                    .keyboardType(.emailAddress)

                // Bio
                TextField("Bio", text: $bio)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .textInputAutocapitalization(.sentences)

                // Education
                TextField("Education", text: $education)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .textInputAutocapitalization(.words)

                // Skills
                TextField("Skills", text: $skills)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .textInputAutocapitalization(.words)
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 30)
            .shadow(radius: 5)
            
        

            // Sign Up Button
            Button(action: {
                showingAlert = true
            }) {
                Text("Sign Up")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding(.horizontal, 16)
            .padding(.top, 30)
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Success"),
                      message: Text("You have successfully signed up!"),
                      dismissButton: .default(Text("OK")))
            }
        }
        .padding()
        
    }
}




    

