//
//  BarChartView.swift
//  Keep-It-Going
//
//  Created by Divya Jain on 3/13/21.
//

import SwiftUI

struct BarChartView: View {
    
    func sumPrecipitation(_ month: Int) -> Double {
        return 20
    }
    
    func monthAbbreviationFromInt(_ month: Int) -> String {
      let ma = Calendar.current.shortMonthSymbols
      return ma[month]
    }
    
    var body: some View {
        HStack {
          // 2
          ForEach(0..<12) { month in
            // 3
            VStack {
              // 4
              Spacer()
//              Text("\(self.sumPrecipitation(month))")
//                .font(.footnote)
//                .rotationEffect(.degrees(-90))
//                .offset(y:0)
//                .zIndex(1)

                Rectangle()
                .fill(Color.blue)
                .frame(width: 20, height: CGFloat(self.sumPrecipitation(month)) * 15.0)
              
              Text("\(self.monthAbbreviationFromInt(month))")
                .font(.footnote)
                .frame(height: 20)
            }
          }
        }
        .padding(4)
    }
}

struct BarChartView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartView()
    }
}
