extends Control

var story = "Hello my name is %s My last name is %s My pet is %s My favorite food is %s"
var answers = ["Raksina", "Patarum", "Cat", "Tomyam"]
var questions = []

func _ready():
	print( story % answers )
	
	$"VBoxContainerDisplayText".text = "Hello my dear. /nWelcome to our home.."
	
	questions.append("Do you still remember your name? /nCan you tell me?")
	questions.append("Oh.. Your name has a good meaning.. /n")
	questions.append("What is your pet?")
	questions.append("what is your favorite food?")
	print(questions)
	print(len(questions))
	print(questions[0]) #first question
	print(questions[1])
	print(questions[2])
	print(questions[3])





func _on_TextureButton_pressed():
	$"VBoxContainer/DisplayText".text = $"TextEdit".text
