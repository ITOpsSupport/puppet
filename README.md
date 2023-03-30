Created By : Ayush Raj
Requirement:

Install custom rpm package "BESAgent-10.0.8.37-rhe6.x86_64.rpm" on server using puppet and start the service 
	a. befor installing the package make sure to ,
		1. create directory /etc/opt/BESClient/
		2. copy masthead.afxm to /etc/opt/BESClient/

	b.  the package "BESAgent-10.0.8.37-rhe6.x86_64.rpm" and file "actionsite.afxm" is preasent in puppet master in location /opt/