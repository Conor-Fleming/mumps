d LastVitVal^LUPPDB35(5,"","","")
s height=$P(V(1),"(",2)
s height=$P(height," ",1) 
s weight=$$Main^SNETLINK(patID,patDAT,"EPT18030")/35.274
s sex=$$Main^SNETLINK(patID,patDAT,"EPT130") 
s age=$$Main^SNETLINK(patID,patDAT,"EPT120") 
i sex=1 s result=(10*weight)+(6.25*(height*100))-(5*age)-161 
i sex=2 s result=(10*weight)+(6.25*(height*100))-(5*age)+5
s result=$E(result,1,6)
s result="BMR: "_result_" Calories/day"
d FREETXT^JRPTTXT(,,,result)

d FREETXT^JRPTTXT(,,,patDAT_"1")
d FREETXT^JRPTTXT(,,,DAT_"2")
d FREETXT^JRPTTXT(,,,PAT_DAT_"3")
d FREETXT^JRPTTXT(,,,eptDAT_"4")




                           
//getting weight value from 'V(1)' and setting just the value to variable weight in LBS
//getting height value and parsing value at 'V(1)' and setting value to height variable in meters
//setting sex variable male=2 female=1
//setting age variable
//