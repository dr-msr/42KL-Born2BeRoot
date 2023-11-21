checkhost=$(hostname | sed 's/.*\(.\{2\}\)$/\1/')
if [ "$checkhost" = "42" ] 
then 
	echo "deb http://deb.debian.org/debian bookworm main" > /etc/apt/sources.list
	echo "deb-src http://deb.debian.org/debian bookworm main" >> /etc/apt/sources.list
	echo "" >> /etc/apt/sources.list
	echo "deb http://deb.debian.org/debian-security/ bookworm-security main" >> /etc/apt/sources.list
	echo "deb-src http://deb.debian.org/debian-security/ bookworm-security main" >> /etc/apt/sources.list
	echo "" >> /etc/apt/sources.list
	echo "deb http://deb.debian.org/debian bookworm-updates main" >> /etc/apt/sources.list
	echo "deb-src http://deb.debian.org/debian bookworm-updates main" >> /etc/apt/sources.list
else 
	echo "Please run this script from a Born2BeRoot virtual machine." 
fi