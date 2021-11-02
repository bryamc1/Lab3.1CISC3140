
BEGIN {
  #Set field separator to ","
  FS=","
  counter = 0 # This variable will keep count of how many MVPs there are
  a = 2021 - 1950
  # Loop to create arrays for MVP info
  for(b = 0;b<a;b++){
  	playerName[b] = ""
  	playerTeam[b] = ""
  	year[b] = ""
	countMVP[b] = 0
  }
  print "--All Star Game MVPs 1951-2021s--"
  
}
{
  # Line below determines whether a player won MVP or not and sets result to x, 1 meaning yes and 0 meaning no
  x = $5 == "Y"	
  if(x == 1){
	playerName[counter] = $1
	playerTeam[counter] = $6
	year[counter] = $2
	counter = counter + 1
	#This loops thru the name array and if the player already exists, we add another MVP credit for them
	for(i=0;i<counter;i++){
		compare = playerName[i] == $1 
		if(compare == 1){
			countMVP[i] = countMVP[i] + 1
		}
	}
  }
}
END {	
	# Loop to print final formatted data
	for(i = counter-1;i>=0;i--){
		print "------------------------------------------------------"
		print "YEAR:" year[i]
		print playerName[i]
		print "TEAM: " playerTeam[i]	
		print "Total MVP Awards: " countMVP[i]	
	}
}

