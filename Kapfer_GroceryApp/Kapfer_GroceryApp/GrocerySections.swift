//
//  GrocerySections.swift
//  Kapfer_GroceryApp
//
//  Created by Kapfer,Jacob M on 11/16/22.
//

import Foundation

struct GrocerySections {
    var section = ""
    var items_Array:[GroceryItem]
}

struct GroceryItem {
    var itemName = ""
    var itemImage = ""
    var itemInfo = ""
}

let meat = GrocerySections(section:"Meat", items_Array: [
    GroceryItem(itemName:"Pork Loin", itemImage:"porkloin", itemInfo:"Yummy yummy! This dilectable treat is an american staple, espcially after tenderizing, breading, frying"),
    GroceryItem(itemName: "Tendies", itemImage:"tendies", itemInfo:"all the m'goodboys go crazy for these! Grab that bucket of honey mussy and go to town"),
    GroceryItem(itemName: "Ground Beef", itemImage:"beef", itemInfo:"Get out the grill and grab your seasoning becasue this ground beef will make for the perfect burger"),
    GroceryItem(itemName: "Bacon", itemImage:"bacon", itemInfo:"An American breakfast staple, this cut of meat is guaranteed to add flavor to any dish"),
    GroceryItem(itemName: "Sausage", itemImage:"sausage", itemInfo:"Yet another cut of meat from America's favorite piece of livestock, this pork sausage is sure to start your day off right")
])

let chips = GrocerySections(section:"Chips", items_Array: [
    GroceryItem(itemName:"BBQ", itemImage:"bbqchips", itemInfo:"A potluck classic! These chips are sure to say I didn't know what to bring so here I am with some basic chips"),
    GroceryItem(itemName:"Torilla Chips", itemImage:"torillachips", itemInfo:"These chips pair well with queso!"),
    GroceryItem(itemName:"Ruffles", itemImage:"ruffles", itemInfo:"I honestly don't think anyone buys these chips because there are better options"),
    GroceryItem(itemName:"Let's", itemImage:"lets", itemInfo:"These chips make for a great food review video"),
    GroceryItem(itemName:"Sterzings", itemImage:"sterzings", itemInfo:"A classic American potato chip")
])

let drinks = GrocerySections(section:"Drinks", items_Array: [
    GroceryItem(itemName:"Game Fuel", itemImage:"gamefuel", itemInfo:"A potluck classic! These chips are sure to say I didn't know what to bring so here I am with some basic chips"),
    GroceryItem(itemName:"Mtn. Dew", itemImage:"mtndew", itemInfo:"These chips pair well with queso!"),
    GroceryItem(itemName:"Bourbon", itemImage:"jimbeam", itemInfo:"Hooch, The good stuff, and the thing that made your wife leave you. This is a kentucky bourbon"),
    GroceryItem(itemName:"Liquid Death", itemImage:"liquiddeath", itemInfo:"This is literraly just la croix but a little better and with a much better name"),
    GroceryItem(itemName:"Forbidden Milk", itemImage:"clorox", itemInfo:"Constraints make me want to take a big 'ol swig")
])

var sections = [meat,chips,drinks]
