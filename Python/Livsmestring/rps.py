# write rock paper scissors game

import random
import time

def get_computer_move(move):
    if move == "r":
        return "rock"
    elif move == "p":
        return "paper"
    elif move == "s":
        return "scissors"
    else:
        print("Invalid move")
        return get_computer_move(input("Enter your move: "))

def get_player_move(move):
    if move == "r" or move == "rock":
        return "rock"
    elif move == "p" or "paper":
        return "paper"
    elif move == "s" or "scissors":
        return "scissors"
    else:
        print("Invalid move")
        return get_player_move(input("Enter your move: "))

        
# write a rock, paper scissors game
def rock_paper_scissors():
    player_move = get_player_move(input("Enter your move: "))
    computer_move = get_computer_move(random.choice("rps"))
    print("Computer move: " + computer_move)
    if player_move == computer_move:
        print("It's a tie!")
    elif player_move == "rock":
        if computer_move == "paper":
            print("Computer wins!")
        else:
            print("Player wins!")
    elif player_move == "paper":
        if computer_move == "scissors":
            print("Computer wins!")
        else:
            print("Player wins!")
    elif player_move == "scissors":
        if computer_move == "rock":
            print("Computer wins!")
        else:
            print("Player wins!")
    else:
        print("Invalid move")
        rock_paper_scissors()


rock_paper_scissors()
