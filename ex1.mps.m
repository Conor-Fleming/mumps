isValidZipCode(address,error)
 s addressSize=$L(address,error)
 s lastFive=$E(address,addressSize-4,addressSize)
 i lastFive?5N s error="" q 1 
 e  s error="This address does not include a valid zip code" q 0