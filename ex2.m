strReplace(str,old,new,count)
 s endPos=0
 f  s endPos=$F(str,old,endPos) q:endPos=0 s $E(str,endPos-$L(old),endPos-1)=new s count=count+1
 //w "Change count: ",count,!
 q str