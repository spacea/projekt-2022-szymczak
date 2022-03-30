wybor_toru = function(tor){
 if(tor == 1){
   cat(taktyka_opony_spa(spa))
 }else if(tor == 2){
   cat(taktyka_opony_monako(monako))
 }else if(tor == 3){
   cat(taktyka_opony_monza(monza))
 }  
}
wybor_toru(3)
