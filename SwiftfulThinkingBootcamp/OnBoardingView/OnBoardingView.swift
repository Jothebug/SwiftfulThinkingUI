//
//  OnBoardingView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 4/9/24.
//

import SwiftUI

struct OnBoardingView: View {
    
    
    /*
     0 - Welcome screen
     1 - Add name
     3 - Add age
     3 - Add gender
     */
    @State var onboardingState: Int = 0
    
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    
    @State var name: String = ""
    @State var age: Float = 50
    @State var gender: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.green)
                }
            }
            
            VStack {
                Spacer()
                bottomButton
            }
            .padding(30)
        }
        .alert(isPresented: $showAlert, content: {
            return Alert(title: Text(alertTitle))
        })
    }
}

#Preview {
    OnBoardingView()
        .background(Color.purple)
}

// MARK: COMPONENTS
extension OnBoardingView {
    private var bottomButton: some View {
        Text(onboardingState == 0 ? "SIGN UP" : onboardingState == 3 ? "FINISH" : "NEXT")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .background(.white)
            .cornerRadius(10)
            .onTapGesture {
                handleNextButtonPressed()
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40, content: {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .circular)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    ,alignment: .bottom
                )
            
            Text("This is the number one app for finding your match online! In this tutorial we are practicing using AppStorage and other SwiftUI teachniques.")
                .fontWeight(.medium)
                .foregroundColor(.white)
            
            Spacer()
            Spacer()
        })
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addNameSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(.white)
                .cornerRadius(10)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Picker(
                selection: $gender,
                label: Text("Select a gender")
                        .font(.headline)
                        .foregroundColor(.purple)
                        .frame(height: 55)
                        .frame(width: .infinity)
                        .background(.white)
                        .cornerRadius(10),
                content: {
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                    Text("Non-Binary").tag("Non-Binary")}
            )
            .pickerStyle(MenuPickerStyle())
            Spacer()
            Spacer()
        }
        .padding(30)
    }
}

// MARK: FUNCTIONS
extension OnBoardingView {
   
    func handleNextButtonPressed() {
        
        // CHECK STATUS
        
        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert(title: "Your name must be a leats 3 characters long!")
                return
            }
        case 3:
            guard gender.count > 1 else {
                showAlert(title: "Please select a gender before moving forward!")
                return
            }
        default:
            break
        }
        
        // GO TO NEXT SECTION
        if onboardingState == 3 {
            
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }
    
    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()){
            currentUserSignedIn = true
        }
    }
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
}
