
BEGIN {
  FS=","
  counter = 0
  a = 2021 - 1950
  for(b = 0;b<a;b++){
  	playerName[b] = ""
  	playerTeam[b] = ""
  	year[b] = ""
	countMVP[b] = 0
  }
  print "--All Star Game MVPs 1951-2021s--"
  
}
{
  x = $5 == "Y"	
  if(x == 1){
	playerName[counter] = $1
	playerTeam[counter] = $6
	year[counter] = $2
	counter = counter + 1
	for(i=0;i<counter;i++){
		compare = playerName[i] == $1 
		if(compare == 1){
			countMVP[i] = countMVP[i] + 1
		}
	}
  }
}
END {
	
	for(i = counter-1;i>=0;i--){
		print "------------------------------------------------------"
		print "YEAR:" year[i]
		print playerName[i]
		print "TEAM: " playerTeam[i]	
		print "Total MVP Awards: " countMVP[i]	
	}
}

