//
//  ItemDetailView.swift
//  Lovar
//
//  Created by Rosa Tiara Galuh on 28/04/23.
//

import SwiftUI

struct ItemDetailView: View {
    // let fact: Fact
    @Binding var showDetailView: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .frame(height: UIScreen.main.bounds.height * 0.65)
                .cornerRadius(10)
                .padding()
            VStack {
                HStack {
                    Text("Detail Title")
                        .font(.system(size: 28))
                        .bold()
                        .foregroundColor(.pink)
                        .padding(.leading, 70)
                        .frame(width: 250)
                    
                    Button(action: {
                        withAnimation {
                            showDetailView = false
                        }
                    }, label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.title)
                        
                    })
                    .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding(.trailing, 40)
                Text("This is a description. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                    .font(.system(size: 17))
                    .foregroundColor(.pink)
                    .frame(maxWidth: UIScreen.main.bounds.width * 0.7)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)
                    .padding(20)
                Button {
                    
                } label : {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 80, height: 40)
                        Text("OK")
                            .bold()
                            .foregroundColor(.white)
                    }
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width * 0.9)
        .background(BlurView(style: .systemUltraThinMaterial))
        .cornerRadius(15)
        .shadow(radius: 5)
        .foregroundColor(.pink)
    }
}

struct BlurView: UIViewRepresentable {
    var style: UIBlurEffect.Style
    
    func makeUIView(context: UIViewRepresentableContext<BlurView>) -> UIVisualEffectView {
        let blurEffect = UIBlurEffect(style: style)
        let blurView = UIVisualEffectView(effect: blurEffect)
        return blurView
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: UIViewRepresentableContext<BlurView>) {
        uiView.effect = UIBlurEffect(style: style)
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BingoPageView()
    }
}