echo Enter your mobile no:
read no
echo enter your country code:
read cc
python yowsup-cli registration -E android -p $no  -C $cc -r sms
echo "Enter OTP you recieved on your phone:"
read OTP
python yowsup-cli registration -E android -p $no -C $cc -R $OTP

echo "Now your phone is connected!!!!"

echo Enter Password:
read pw


echo Enter contact to whom you have to send message:
read cno

echo Enter text message
read message

sudo python yowsup-cli demos -l $no:$pw -s $cno "$message"

