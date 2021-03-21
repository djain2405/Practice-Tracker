//
//  SaveCancelContainerView.swift
//  Keep-It-Going
//
//  Created by Divya Jain on 3/12/21.
//

import SwiftUI

struct SaveCancelContainerView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State private var showingAlert = false
    @State var chartView = false


    var body: some View {
        HStack{
            Button(action: {
//                self.mode.wrappedValue.dismiss()
                showingAlert = true
            }, label: {
                Text("Cancel")
            })
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(Color.blue)
            )
            .foregroundColor(.white)
            .alert(isPresented:$showingAlert) {
                Alert(
                    title: Text("Are you sure you want to delete this session?"),
                    primaryButton: .destructive(Text("Delete")) {
                        print("Deleting...")
                    },
                    secondaryButton: .cancel(Text("Dismiss"))
                )
            }
            NavigationLink(
                destination: BarChartView(), isActive: $chartView){
            Button(action: {
                withAnimation{
                    self.chartView.toggle()
                }
                print("Continue")
            }, label: {
                Text("Save")
            })
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(Color.blue)
            )
            }
            .foregroundColor(.white)
        }
        .padding()
    }
}

struct SaveCancelContainerView_Previews: PreviewProvider {
    static var previews: some View {
        SaveCancelContainerView()
    }
}
