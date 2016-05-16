" Published under MIT licence terms."
" @2016	Germán Arduino	(gsa@arsol.net)"
Object
	subclass: #Quini6
	instanceVariableNames: ' winnerArray winnerNumber duplicateNumber index '
	category: #Quini6 !



 ! Quini6 class methodsFor: #launching !
launch
	" Private - Launch. "
	|quini6|

	quini6 := self new.
	quini6 play.
	Transcript show: quini6 winnerArray.
	self print: 'La tarjeta ganadora es:  ', quini6 winnerArray asString, ' fuooooo....'.! !


 ! Quini6 methodsFor: #accessing !
duplicateNumber
	" Return the duplicateNumber. "

	^duplicateNumber! !

 ! Quini6 methodsFor: #accessing !
duplicateNumber: aNumber
	" Set the duplicateNumber. "

	duplicateNumber := aNumber! !

 ! Quini6 methodsFor: #accessing !
index
	" Return the index. "

	^index! !

 ! Quini6 methodsFor: #accessing !
index: aNumber
	" Set the index. "

	index := aNumber! !

 ! Quini6 methodsFor: #initialize !
initialize
	" Private - Initialize the receiver. "
	super initialize.
	self index: 1.
	self winnerArray: (Array new: 6).! !

 ! Quini6 methodsFor: #play !
play
	" Method play. "

	[index < 7] whileTrue:
	[ winnerNumber := 45 atRandom.
 
	duplicateNumber := winnerArray occurrencesOf: winnerNumber. 
	duplicateNumber = 0 ifTrue: [winnerArray at: index put: winnerNumber. 
	index := index + 1]].! !

 ! Quini6 methodsFor: #accessing !
winnerArray
	" Return the winnerArray in printer format. "

	^winnerArray! !

 ! Quini6 methodsFor: #accessing !
winnerArray: aNumber
	" Set the winnerArray of the receiver. "

	winnerArray := aNumber! !

 ! Quini6 methodsFor: #accessing !
winnerNumber
	" Return the winnerNumber. "

	^winnerNumber! !

 ! Quini6 methodsFor: #accessing !
winnerNumber: aNumber
	" Set the winnerNumber. "

	winnerNumber := aNumber! !