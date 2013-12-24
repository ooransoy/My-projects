import random
array = [1, 2, 3, 10, 50]
while True:
    choice = int(raw_input("Take your pick from 1, 2, 3, 10, 50"))
    correct = random.choice(array)
    if choice == correct:
        print "Correct! You chose: " + str(choice) + "."
    elif choice != correct and choice in array:
        print "Nope. You chose: " + str(choice) + "." + " But the correct answer was: " + str(correct) + "."
    else:
        print "That is NOT a choice. The choices were: "
        for i in array: print str(i) + " "
    qorc = raw_input("Press 'Enter' to play again and 'q' to quit.")
    if qorc == "q":
        break

