import Foundation

// Arrays
// This lab will require you to do some investigation via google. A primary way ALL developers learn about the capabilities of a language.

// Assume you are an event coordinator for a community charity event and are keeping a list of who has registered. Create a variable registrationList that will hold strings. It should be empty after initialization.
var registrationList: [String] = []
// Your friend Sara is the first to register for the event. Add her name to registrationList using the append(_:) method. Print the contents of the collection.
registrationList.append("Sara")
print(registrationList)
// Add four additional names into the array using the += operator. All of the names should be added in one step. Print the contents of the collection.
// We didn't cover this specifically in the class but you can google this to see how to accomplish this.
registrationList += ["Tom", "Bob", "Steve", "John"]
print(registrationList)
// Use the insert(_:at:) method to add Charlie into the array as the second element. Print the contents of the collection.
registrationList.insert("Charlie", at: 1)
print(registrationList)
// Someone had a conflict and decided to transfer her registration to someone else. Use array subscripting to change the sixth element to Rebecca. Print the contents of the collection.
registrationList[5] = "Rebecca"
print(registrationList)
// Call removeLast() on registrationList. If done correctly, this should remove Rebecca from the collection. Store the result of removeLast() into a new constant deletedItem, then print deletedItem.
// Again you will need to do a little googling to figure this one out.
let deletedItem = registrationList.removeLast()
print(deletedItem)
/*
 Your fitness tracking app shows users a list of possible challenges, grouped by activity type (i.e. walking challenges, running challenges, calisthenics challenges, weightlifting challenges, etc.) A challenge could be as simple as "Walk 3 miles a day" or as intense as "Run 5 times a week."
 Using arrays of type String, create at least two lists, one for walking challenges, and one for running challenges. Each should have at least two challenges and should be initialized using an array literal. Feel free to create more lists for different activities.
 */
let walkingChallenges: [String] = ["walk 2 miles", "Burn 100 calories"]
let runningChallenges: [String] = ["Run 3 miles", "Burn 300 calories"]
// In your app you want to show all of these lists on the same screen grouped into sections. Create a challenges array that holds each of the lists you have created (it will be an array of arrays). Using challenges, print the first element in the second challenge list.
// Give this a shot. Lists can contain other lists. For example you can have a todo list where the first level is the day of the week and then in each day there is another list of all the things you need to do that day.
var challenges = [walkingChallenges, runningChallenges]
print(challenges[1][0])

// All of the challenges will reset at the end of the month. Use the removeAll to remove everything from challenges. Print challenges.
challenges.removeAll()
print(challenges)
// Create a new array of type String that will represent challenges a user has committed to instead of available challenges. It can be an empty array or have a few items in it.
var committed: [String] = []
// Write an if statement that will use isEmpty to check if there is anything in the array. If there is not, print a statement asking the user to commit to a challenge. Add an else-if statement that will print "The challenge you have chosen is <INSERT CHOSEN CHALLENGE>" if the array count is exactly 1. Then add an else statement that will print "You have chosen multiple challenges."
if committed.isEmpty {
    print("Commit to a challenge!")
}
else if committed.count == 1 {
    print("The cahllenge you have chosen is \(committed[0])")
}
else {
    print("You have chosen multiple challenges")
}
