////
////  PointsData.swift
////  weightCounter
////
////  Created by Aimee Arost on 12/16/23.
////
////
////import Foundation
////import SwiftData
////
////@Model
////class PointsItem: Identifiable {
////    var id: String
////    var totalPoints: Int
////    var pointsRemaining: Int
////    
////    init(totalPoints: Int, pointsRemaining: Int) {
////        
////        self.id = UUID().uuidString
////        self.totalPoints = totalPoints
////        self.pointsRemaining = pointsRemaining
////    }
////    
////
////    
////}
//
//import SwiftUI
//import SwiftData
//
//struct ContentView: View {
//    
//    @Environment(\.modelContext) private var context
//    
//    @State private var isActive: Bool = false
//    
//
//    @Query private var items: [DataItem]
//    
//    @State private var name = ""
//    @State private var weight: Double?
//    @FocusState var focus: Bool
//    
//    @AppStorage("totalPoints") var totalPoints: Int = 0
//    @AppStorage("pointsRemaining") var pointsRemaining: Int = 14
//    @AppStorage("totalWeeklyPoints") var totalWeeklyPoints: Int = 0
//    @AppStorage("pointsWeeklyRemaining") var pointsWeeklyRemaining: Int = 35
//    
//    
//    @State var calories: Double?
//    @State var saturatedFat: Double?
//    @State var protein: Double?
//    @State var sugars: Double?
//    @State var foodPointsAnswer = ""
//    @State var divideBy = 1.0
//    
//    
//    
//    func hideKeyboard() {
//        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
//    }
//    
//    
//    
//    var body: some View {
//        NavigationStack {
//            
//            VStack() {
// 
//                HStack() {
//                    Spacer()
//                    Spacer()
//                    Text("WW Tracker")
//                        .multilineTextAlignment(.center)
//                        .frame(maxWidth: 225, alignment: .center)
//                        .font(.system(size: 24))
//
//      
//                    Spacer()
//                    Spacer()
//                    
//                }.padding(.top, 10)
//                HStack {
//                    VStack {
//                          Spacer()
//                        TextField("lbs", value: $weight, format: .number)
//                            .textFieldStyle(.roundedBorder)
//                            .overlay( RoundedRectangle(cornerRadius: 5) .stroke(Color.gray) )
//                        //                    .background(Color(.systemGray6))
//                            .frame(maxWidth: 55, alignment: .leading)
//                            .multilineTextAlignment(.center)
//                          Spacer()
//                      }
//                    
//          
//                    
//       
//
////
//                    Button {
//                        addItem()
//                        self.weight = nil
//                        self.hideKeyboard()
//                        
//                    } label: {
//                        
//                        Image(systemName: "plus.circle.fill")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 30, height: 30)
//                        
//                        
//                            .tint(Color.gray)
//                        
//                    }.padding(.trailing, 10)
//                    
//                }
//                
//                VStack {
//                    HStack() {
//                        Spacer()
//                        Spacer()
//                        Text("Calories")
//                            .multilineTextAlignment(.leading)
//                            .frame(maxWidth: 225, alignment: .leading)
//                        
//                        TextField("", value: $calories, format: .number)
//                            .textFieldStyle(.roundedBorder)
//                            .keyboardType(.numbersAndPunctuation)
//                            .frame(width: 55)
//                            .multilineTextAlignment(.center)
//                        Spacer()
//                        Spacer()
//                        
//                    }
//                    HStack() {
//                        Spacer()
//                        Spacer()
//                        Text("Saturated Fat")
//                            .multilineTextAlignment(.leading)
//                            .frame(maxWidth: 225, alignment: .leading)
//                        
//                        TextField("", value: $saturatedFat, format: .number)
//                            .textFieldStyle(.roundedBorder)
//                            .keyboardType(.numbersAndPunctuation)
//                            .frame(width: 55)
//                            .multilineTextAlignment(.center)
//                        Spacer()
//                        Spacer()
//                        
//                    }
//                    HStack() {
//                        Spacer()
//                        Spacer()
//                        Text("Protein")
//                            .multilineTextAlignment(.leading)
//                            .frame(maxWidth: 225, alignment: .leading)
//                        
//                        TextField("", value: $protein, format: .number)
//                            .textFieldStyle(.roundedBorder)
//                            .keyboardType(.numbersAndPunctuation)
//                            .frame(width: 55)
//                            .multilineTextAlignment(.center)
//                        Spacer()
//                        Spacer()
//                        
//                    }
//                    HStack() {
//                        Spacer()
//                        Spacer()
//                        Text("Sugars")
//                            .multilineTextAlignment(.leading)
//                            .frame(maxWidth: 225, alignment: .leading)
//                        
//                        TextField("", value: $sugars, format: .number)
//                            .textFieldStyle(.roundedBorder)
//                            .keyboardType(.numbersAndPunctuation)
//                            .frame(width: 55)
//                            .multilineTextAlignment(.center)
//                        Spacer()
//                        Spacer()
//                        
//                    }
//                    
//                    
//                    
//                    HStack {
//                        Spacer()
//                        Spacer()
//                        
//                        
//                        Button("Calculate") {
//                            foodPointsAnswer = "hell yea"
//                        }
//                        .buttonStyle(.bordered)
//                        .frame(width: 225, alignment: .leading)
//                        .tint(.gray)
//                        
//
//                        
//                        
//                        
//                        Text("\(foodPointsAnswer)")
//                            .frame(maxWidth: 60, alignment: .trailing)
//                            .multilineTextAlignment(.center)
//                        
////                        HStack {
////
////
////                            Button {
////                                totalPoints = 0
////                                pointsRemaining = 14
////
////                            } label: {
////
////                                Image(systemName: "arrow.triangle.2.circlepath")
////                                    .resizable()
////                                    .scaledToFit()
////                                    .frame(width: 20, height: 20)
////                                    .tint(Color.gray)
////                            }
////                        }
////                        .frame(width: 25)
//                        
//                        Spacer()
//                        Spacer()
//                        
//                    }.padding(.top, 1)
//                    
//                    
//                    
//                    
//                }.padding(.bottom, 30)
//                    .padding(.top, 10)
//                Spacer()
//                Divider()
//                VStack(alignment: .trailing) {
//                    HStack {
//                        Spacer()
//                        Spacer()
//                        Text("+/- Today's Points")
//                            .frame(maxWidth: 250, alignment: .leading)
//                        
//                        
//                        HStack {
//                            
//                            
//                            Button {
//                                if totalPoints > 0 {
//                                    totalPoints -= 1
//                                    pointsRemaining += 1
//                                }
//                            } label: {
//                                
//                                Image(systemName: "minus.circle.fill")
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: 20, height: 20)
//                                    .tint(Color.gray)
//                                
//                            }
//                            Button {
//                                if totalPoints < 14 && pointsRemaining > 0 {
//                                    totalPoints += 1
//                                    pointsRemaining -= 1
//                                }
//                                
//                            } label: {
//                                
//                                Image(systemName: "plus.circle.fill")
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: 20, height: 20)
//                                    .tint(Color.gray)
//                            }
//                        }
//                        .frame(width: 25)
//                        
//                        Spacer()
//                        Spacer()
//                        
//                    }
//                    
//                    HStack() {
//                        Spacer()
//                        Spacer()
//                        Text("Total Points Used ")
//                        //                            .frame(width: 200, height: 15)
//                        //                            .multilineTextAlignment(.leading)
//                            .frame(maxWidth: 250, alignment: .leading)
//                        
//                        Text("\(totalPoints)")
//                            .frame(width: 25)
//                            .multilineTextAlignment(.trailing)
//                        Spacer()
//                        Spacer()
//                        
//                    }.padding(.top, 1)
//                    HStack() {
//                        Spacer()
//                        Spacer()
//                        Text("Today's points remaining ")
//                        //                            .frame(width: 200, height: 15)
//                        //                            .multilineTextAlignment(.leading)
//                            .frame(maxWidth: 250, alignment: .leading)
//                        
//                        Text("\(pointsRemaining)")
//                            .frame(width: 25)
//                            .multilineTextAlignment(.trailing)
//                        Spacer()
//                        Spacer()
//                        
//                    }
//                    
//                    
//                    HStack {
//                        Spacer()
//                        Spacer()
//                        Text("Reset")
//                            .frame(maxWidth: 250, alignment: .leading)
//                        
//                        HStack {
//                            
//                            
//                            Button {
//                                totalPoints = 0
//                                pointsRemaining = 14
//                                
//                            } label: {
//                                
//                                Image(systemName: "arrow.triangle.2.circlepath")
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: 20, height: 20)
//                                    .tint(Color.gray)
//                            }
//                        }
//                        .frame(width: 25)
//                        
//                        Spacer()
//                        Spacer()
//                        
//                    }.padding(.top, 1)
//                    
//                    
//                }.frame(width: 380)
//                    .padding(.top, 30)
//                    .padding(.bottom, 20)
//                
//                //            .padding([.top], 25)
//                
//                
//                
//                
//                
//                
//                
//                
//                VStack(alignment: .trailing) {
//                    HStack {
//                        Spacer()
//                        Spacer()
//                        Text("+/- Weekly Points")
//                            .frame(maxWidth: 250, alignment: .leading)
//                        
//                        HStack {
//                            
//                            
//                            Button {
//                                if totalWeeklyPoints > 0 {
//                                    totalWeeklyPoints -= 1
//                                    pointsWeeklyRemaining += 1
//                                }
//                            } label: {
//                                
//                                Image(systemName: "minus.circle.fill")
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: 20, height: 20)
//                                    .tint(Color.gray)
//                            }
//                            Button {
//                                if totalWeeklyPoints < 35 && pointsWeeklyRemaining > 0 {
//                                    totalWeeklyPoints += 1
//                                    pointsWeeklyRemaining -= 1
//                                }
//                                
//                            } label: {
//                                
//                                Image(systemName: "plus.circle.fill")
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: 20, height: 20)
//                                    .tint(Color.gray)
//                            }
//                        }
//                        .frame(width: 25)
//                        
//                        Spacer()
//                        Spacer()
//                        
//                    }
//                    
//                    HStack() {
//                        Spacer()
//                        Spacer()
//                        Text("Weekly points used: ")
//                        //                            .frame(width: 200, height: 15)
//                        //                            .multilineTextAlignment(.leading)
//                            .frame(maxWidth: 250, alignment: .leading)
//                        
//                        Text("\(totalWeeklyPoints)")
//                            .frame(width: 25)
//                            .multilineTextAlignment(.trailing)
//                        Spacer()
//                        Spacer()
//                        
//                    }
//                    .padding(.top, 1)
//                    HStack() {
//                        Spacer()
//                        Spacer()
//                        Text("Weekly points remaining: ")
//                        //                            .frame(width: 200, height: 15)
//                        //                            .multilineTextAlignment(.leading)
//                            .frame(maxWidth: 250, alignment: .leading)
//                        
//                        Text("\(pointsWeeklyRemaining)")
//                            .frame(width: 25)
//                            .multilineTextAlignment(.trailing)
//                        Spacer()
//                        Spacer()
//                        
//                    }
//                    HStack {
//                        Spacer()
//                        Spacer()
//                        Text("Reset")
//                            .frame(maxWidth: 250, alignment: .leading)
//                        
//                        HStack {
//                            
//                            
//                            Button {
//                                totalWeeklyPoints = 0
//                                pointsWeeklyRemaining = 35
//                                
//                            } label: {
//                                
//                                Image(systemName: "arrow.triangle.2.circlepath")
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: 20, height: 20)
//                                    .tint(Color.gray)
//                            }
//                        }
//                        .frame(width: 25)
//                        
//                        Spacer()
//                        Spacer()
//                        
//                    }.padding(.top, 1)
//                    .padding(.bottom, 20)
//        
//                    
//                    Spacer()
//                    Spacer()
//                }.frame(width: 380)
//                    .navigationTitle("")
//                    .navigationBarTitleDisplayMode(.inline)
////                   .font(.custom("AmericanTypewriter", size: 19))
//                    .toolbar {
//                        ToolbarItem(placement: .topBarTrailing) {
//                            
//                            NavigationLink(destination: WeightHistoryView()) {
//                                Image(systemName: "gauge.with.dots.needle.bottom.100percent")
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: 25, height: 25)
//                                    .tint(Color.gray)
//                                    .fontWeight(.bold)
//                            }.padding()
//                            
//                            
//                        }
//
//                    }
//                
//                
//            }
//        }
//    }
//    
//    func addItem() {
//        //        Create item
//        
//        let item = DataItem(weight: weight ?? 0.0, date: Date())
//        
//        //        Add item to the data context
//        context.insert(item)
//        
//        
//    }
//    
//    func deleteItem(_ item: DataItem) {
//        context.delete(item)
//    }
//    
//    func updateItem(_ item: DataItem) {
//        //        edit item
//        //        save item
//        try? context.save()
//    }
//    
////    func calculatePointsButton() {
////
////    //        if fatTextFieldOutlet.text != nil && proteinTextFieldOutlet.text != nil && sugarsTextFieldOutlet.text != nil && caloriesTextFieldOutlet.text != nil  && fatTextFieldOutlet.text != "" && proteinTextFieldOutlet.text != "" && sugarsTextFieldOutlet.text != "" && caloriesTextFieldOutlet.text != ""  {
////
////            let foodPointsAnswerAsDouble = ((calories * 0.0305 * divideBy) + (saturatedFat * 0.275  * divideBy) + (sugars * 0.12  * divideBy) - (protein * 0.098  * divideBy))
////            let roundedAnswer = Int(round(foodPointsAnswerAsDouble))
////            foodPointsAnswer = String(roundedAnswer)
//////            calculatedWeightAnswerLabel.text = foodPointsAnswer
////
////
////
////
////    }
//}
//
//#Preview {
//    ContentView()
//}
