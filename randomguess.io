rand := ((Random bytes(1)) asBinarySignedInteger) % 100 + 1
stdin := File standardInput
prev := -1
for(i, 0, 9,
	x := (stdin readLine("Your guess: ") asNumber)
	if(x == rand,(
		"Congratulation" print
		break
	),(
		if(i == 9, "You lost. The number is " print; rand println,
			if(i == 0, prev = x,
				if((prev - rand) abs <= (x - rand) abs, "Cooler" println,
					"Hotter" println
				)
			)
		)
	))
)