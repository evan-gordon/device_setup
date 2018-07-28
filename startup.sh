# Insert into ~/.profile (doesn't work properly in .bashrc)
# Also could try ~/.bash_profile?

# Install nitrogen to have different backgrounds on each monitor 
# Then search 'startup applications'
# Click add and add the following command:
#nitrogen --restore
morning="093000" 
currTime=`date +"%H%M%S"`
if [[ "$currTime" < "$morning" ]]
then
echo "    ';,            ';,       '';;        '';;           '.,,         
     ;;             ;;         ;;          ;;           ,''          
';;;;;;;;;;'  .,,   ;;   ';;;;;;;;;;;      ;;;;;;;   ,    ,,         
     ;;      ,''    ;;         ;;          ;;        ';;''  '';;,    
     ;; ,,,,        ;;         ;;          ;;                  ;;    
    ,;;'    ';,     ;;         ;;          ;;                ,;'    
  ,; ;;       ;;    ;; ,       ;;          ;;              ,;'      
 ';  ;;  ,   ,;     '; ;' ,;''';;';,  ,;''';;';,         ,;'        
   ',;'   '''        ';'  ';,,;'   '' ';,,;'   '',,   .,;'          

"
else
echo "⁽⁽(੭ꐦ •̀Д•́ )੭*⁾⁾ ᑦᵒᔿᵉ ᵒᐢᵎᵎ"
fi

alias c=clear

function lazygit() { 
  git add . 
  git commit -a -m "$*" 
  git push origin HEAD
}
 
