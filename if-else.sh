echo Enter your password: 
read password

if [ $password -eq 12345 ]
then
	echo User Name: ABC
	echo User Code: 00001
else
	echo Wrong Password.
fi
