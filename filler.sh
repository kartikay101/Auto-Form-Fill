#!/bin/bash
chmod +x setup.sh
sh ./setup.sh
clear
echo "############################################################################"
echo "      Welcome To The AUTO FEEDBACK Filler Program for SRM Academia Website "
echo " "
echo " Steps To Use It Are As Follows :"
echo " "
echo " 1: Before You Enter Any Detail Below Open The Firefox Web Browser"
echo " "
echo " 2: Enter Your Details Below "
echo " "
echo " 3: If You Enter Any Wrong Detail Press Ctrl+Z To Stop The Code And Rerun It"
echo " "
echo " 4: Do Not Touch Your PC For The Time This Code Runs "
echo " "
echo " 5: It Will Fill All The Columns With The Desired Quality , Submit The Form And     Log You Out Of The Academia Page "
echo " "
echo " 6: Good Luck Have Fun "
echo "############################################################################"
echo " "
echo " Press Enter To Continue "
read garbage
clear
sleep 1
#core code below 
echo "Enter Your SRM  Email ID"
read ID

echo "Enter Your Academia Password"
read -s Pwd

echo "Enter The Number Of Your Theory Subjects"
read th_cnt

echo "Enter The Number Of Your Practical Subjects"
read pr_cnt

echo "Enter Feedback Quality As Follows (Enter The Number As Per Your Choice) 1:Average 2:Excellent 3:Good 4:Poor 5:Very Good"
read qual

chmod +x startff.sh
sh ./startff.sh
wmctrl -a firefox
sleep 15

xdotool type $ID
xdotool key Tab
xdotool type $Pwd
xdotool key Tab
xdotool key Return

sleep 5
xdotool key Ctrl+w
chmod +x feedback.sh
sh ./feedback.sh
sleep 30


	for NUM in {1..8}
	do    
		xdotool key Tab	 	
        done

th_const=16
th_len=`expr $th_cnt \* $th_const`
start=1
for (( c=$start; c<=$th_len; c++ ))
	do    
		for (( d=$start; d<=$qual; d++ ))  
		do		
			xdotool key Down
		done
		xdotool key Tab         
		sleep 0.1
done
sleep 2

xdotool key Tab
xdotool key Tab

pr_const=15
pr_len=`expr $pr_cnt \* $pr_const`

for (( c=$start; c<=$pr_len; c++ ))
	do    
		sleep 0.1  
		for (( d=$start; d<=$qual; d++ ))  
		do		
			xdotool key Down
		done
		xdotool key Tab         

done

xdotool key Tab
xdotool key Tab
xdotool key Return
sleep 5
xdotool key ctrl+w
firefox "https://academia.srmuniv.ac.in/portalLivePage.do?portalLinkName=academia-academic-services&logout=true&serviceurl=https://academia.srmuniv.ac.in"

echo "Thanks For Using This Piece Of Code"
