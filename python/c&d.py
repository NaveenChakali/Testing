while True:
    a = input("enter the rock/paper/scissor: ").lower()
    b = input("enter the rock/paper/scissor: ").lower()

    if a == "rock":
        if b == "scissor":
            print(f"{a} player1 won the match")
        elif b == "paper":
            print(f"{b} player2 won the match")
    elif a == "paper":
        if b == "scissor":
            print(f"{b} player2 won the match")
        elif b == "rock":
            print(f"{a} player1 won the match")
    elif a == "scissor":
        if b == "paper":
            print(f"{a} player1 won the match")
        elif b == "rock":
            print(f"{b} player2 won the match")

    again = input("do you want to play again?(y/n): ")
    if(again == "y"):
        pass
    else:
        break