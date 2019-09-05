extends Control

var story = "uhmm.. my name is %s uhmm.. %s I.. %s I.. I love you %s OK, %s"
var answers = []
var questions = []
var question_number = 0

func _ready():
	#print( story % answers )
	
	$"VBoxContainer/DisplayText".text = "Hello my dear. /nWelcome to our home.."
	
	questions.append("Do you still remember your name? Can you tell me?")
	questions.append("Yeah.. Call me mom")
	questions.append("Come into the house with mom?")
	questions.append("Don't you love me?")
	questions.append("Don't be afraid. I 'm here.. always by your side.")
	
	$VBoxContainer/DisplayText.text = questions[0]
	
func _on_TextureButton_pressed():
	
	if question_number == 0:
		# answer the question
		answers.append( $PlayerInput.text )
		print( answers )
		$VBoxContainer/DisplayText.text = questions[1]
		$PlayerInput.text = ""
	
	# pause
	
	if question_number == 1:
		# answer the question
		answers.append( $PlayerInput.text )
		print( answers )
		$VBoxContainer/DisplayText.text = questions[2]
		$PlayerInput.text = ""
		
	if question_number == 2:
		# answer the question
		answers.append( $PlayerInput.text )
		print( answers )
		$VBoxContainer/DisplayText.text = questions[3]
		$PlayerInput.text = ""
		
	if question_number == 3:
		# answer the question
		answers.append( $PlayerInput.text )
		print( answers )
		$VBoxContainer/DisplayText.text = questions[4]
		$PlayerInput.text = ""
		
	if question_number == 4:
		# answer the question
		answers.append( $PlayerInput.text )
		print( answers )
		$VBoxContainer/DisplayText.text = story % answers
		$PlayerInput.text = ""
	
	
	question_number = question_number+1
