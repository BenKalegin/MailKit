Return-Path: <ysato@etl.go.jp>
Received: from thumper.bellcore.com by greenbush.bellcore.com (4.1/4.7)
	id <AA21993> for nsb; Mon, 8 Jun 92 14:45:42 EDT
Received: from etlpost.etl.go.jp by thumper.bellcore.com (4.1/4.7)
	id <AA21726> for nsb@greenbush; Mon, 8 Jun 92 14:45:35 EDT
Received: from etlpom.etl.go.jp by etlpost.etl.go.jp (5.67+1.6W/2.7W)
	id AA20284; Tue, 9 Jun 92 03:45:40 JST
Received: by etlpom.etl.go.jp (4.1/6.4J.6-ETLpom.MASTER)
	id AA02052; Tue, 9 Jun 92 03:45:27 JST
Received: by etlibs.etl.go.jp (4.1/6.4J.6-ETL.SLAVE)
	id AA11392; Tue, 9 Jun 92 03:45:24 JST
Date: Tue, 9 Jun 92 03:45:24 JST
Return-Path: <ysato@etl.go.jp>
To: nsb@thumper.bellcore.com
Cc: ysato@etl.go.jp (Yutaka Sato =?ISO-2022-JP?B?GyRAOjRGI0stGyhK?= )
Subject: Re: How to see Japanese characters (Re: malformed message)
From: ysato@etl.go.jp (Yutaka Sato =?ISO-2022-JP?B?GyRAOjRGI0stGyhK?=)
Organization: Electrotechnical Laboratory, Tsukuba Science City
Message-Id: <gCvvx.ysato@etl.go.jp>
Content-Type: multipart/mixed; boundary="=="
References: 
	<geADt3q0M2Yt4hhNRb@thumper.bellcore.com> 
	<gCG7l.ysato@etl.go.jp> 
	<keAshCG0M2Yt5A32xi@thumper.bellcore.com>
MIME-Version: 1.0

--==

In message <keAshCG0M2Yt5A32xi@thumper.bellcore.com> on 06/09/92(01:31:10)
you Nathaniel Borenstein <nsb@thumper.bellcore.com> wrote:
 |This is using vanilla metamail, with MM_CHARSET set to iso-2022-jp.  Any
 |idea what's wrong?  I'd love to actually see your name properly...  --
 |Nathaniel

ISO-2022-JP does not correspond to any single character set in X,
but is a sum of US-ASCII and Japanese JIS.
So you must specify two font sets for kterm, like this;

   kterm -fn iso8859/1-font-name -fk kanji-font-name

I our site, following kanji-font is available:

% xlsfonts | grep jis
-jis-fixed-medium-r-normal--0-0-75-75-c-0-jisx0208.1983-0
-jis-fixed-medium-r-normal--16-110-100-100-c-160-jisx0208.1983-0
-jis-fixed-medium-r-normal--16-150-75-75-c-160-jisx0208.1983-0
-jis-fixed-medium-r-normal--24-170-100-100-c-240-jisx0208.1983-0
-jis-fixed-medium-r-normal--24-230-75-75-c-240-jisx0208.1983-0
-misc-fixed-medium-r-normal--0-0-75-75-c-0-jisx0201.1976-0
-misc-fixed-medium-r-normal--0-0-75-75-c-0-jisx0208.1983-0
-misc-fixed-medium-r-normal--14-130-75-75-c-140-jisx0208.1983-0
-misc-fixed-medium-r-normal--14-130-75-75-c-70-jisx0201.1976-0
-sony-fixed-medium-r-normal--0-0-100-100-c-0-jisx0201.1976-0
-sony-fixed-medium-r-normal--16-120-100-100-c-80-jisx0201.1976-0
-sony-fixed-medium-r-normal--16-150-75-75-c-80-jisx0201.1976-0
-sony-fixed-medium-r-normal--24-170-100-100-c-120-jisx0201.1976-0
-sony-fixed-medium-r-normal--24-230-75-75-c-120-jisx0201.1976-0

In our site, we can use kterm like this: 

   kterm -fk -misc-fixed-medium-r-normal--14-130-75-75-c-140-jisx0208.1983-0

Of cource, kanji font names are usually aliased to shorter names.
Unfortunately, I don't know which fonts are public and available for you.
I enclosed the picture shows how README.jp looks like using kterm.

--
Yutaka Sato <ysato@etl.go.jp>
Information Base Section
ELECTROTECHNICAL LABORATORY
1-1-4 Umezono, Tsukuba, Ibaraki, 305 Japan

--==
Content-type: image/gif
Content-transfer-encoding: base64
Content-description: README.jp shown in kterm

R0lGODdhNwKwAPAAAAAAAP///ywAAAAANwKwAAAC/kSOqcvtD6OctNqLs968+w+G4kiWZmKc
6sq27gvH8kzXs5Ha+s73/g8MCnW5ofGITCqXzKYE54xKp9Sq9eooYrfcrvcL3kDD5LL5jF5q
xYA22532ruP0unSMKM4b+rY/D5e3sKcQmKEnSOMHtxjY54gS0EiYWEEp6XFpt8lpsYY4AVpY
aXigmaL5kAMZklqJuceKOSuJF3px6Qqh29nrK0ipK/qKSvvKl4nKa+kZOYeHyGhbkpv5e42t
Oujs+Ee8aJq1vcu96t1oCrWKAp5eOs4MzFBsjKNu/BTuLa69317bbVq2gb+m9ZFHKpK8feFG
ZWkHKdosddCc6VM4DwM6/oCMEkl0Y48hP1kZVa2TiLAWwZXYPmGcWDIjSZfkiNWDdZHezWLD
XsaD6fDiQqEUdOILiixlPZA+WTqlY/ClOaSjhtHUdmwnzDHrEIYU2TSfUnd/PhK9dZOfWlgb
O/Z8ChfN1bQ2bVqFt3buPZwJvR5di/Zsw7O2BNZ8G1bqUZSD4zouExWQ0q6NCzc9ddkiT4wo
LWMtahFpRa0xHZLEW9ry1KmPW5PRCxCQIS3/av/7K3reua2cQyt7VzpCNHTDZ3I87TH256QN
bXNl6jp6F8MaW0kX0VXY9e2tl5kEXhQsdw3+QI8/v5I6+vXs21fx7j6+/PmKloLH3TgwiWr6
/q2r4IWYbOJlVpM1y/0GnT4boXYIfWfcFRxVYlFToHAU/vfTffgNQhtmH/CnUl8qpQIfgw5O
R0uAJQK2YTPLVejfCQAKJiEyjLFI3i7KcLYjiQaeGAZtuYUEj3MIIldVQEciqCAhk5D1kD+7
DXZbkjxJAw6R7tCl24AE8kGcchwJSBZ4TIlyZotNkgnllkyytSKQNkRWWYj4GOWZmhxOVpeC
WSn2J1+qUZlYRJQdRNRsB8KoJqJ8ERYoMHnaA+d9EYWWqGqUycnEM3b5hCdu3lllXG55FQqU
m1zGgmmKikE4IXOR9vmofbMK2ttmFvIpG2mQctrpX6H2tKSouCjU/lGdpsqqIlBuzbbgkL19
SiujEnqY33E7utqPsrj6KClEujZZFrBU3HWjkIvJmq20Iq47K6xVQaoTuL+uiu+pLzb6ZZ8g
0nXjqbAFrKe5QYyWqZ3qpptVLidJ5m2twQC6zbgJhpoawOykpCjF3F67a7aMIenxpuq9iunF
gxocRYcB4QSWOUoWoqGVvT7SZoC9jmljc2l65CXDN4tZ7nHH3OYyljUXTfPLOGdsdHEDguLc
RNBBxLITJwcWp3nbdZ112F+AvSULZHNytthqv1fw2hFW1/YQNbtNd9rnTRI0mCBF2xwHM2LX
7k90x1eYl9k83aWnJgb+dt/tVolsrImj/rXi3INzJ2/Llr9hlGSdC4vjk8YSuvHnZUOtW6o6
4mL45Xd/HDfgGkFudkybgl4m3s9Anl1QJrf+pu8N3+q164RTJfWRbGqJpo6032C7x4GKh/Wd
Dwt/NJs7C2RykR+K+7zxTtGp1WbjssXrCyJ9Er7id7KDt0z8+vrO7epuLGLz/bIq8s7it+c+
s8CsMglKld2cJzK+hS57f/IU93RXtNuRjoHZwxjs3oe8CW7vfwDEnQD3si3DmC5KrQuZGOAF
GwbRo3IN7B/x9tKXucArZYwSHQcdgy7N5IRePSOecMIXO+YsLIOoORT8vlIKCaoOg2pJYnJA
xS6d+fCGcUHY/qN+BsIUUYch8OFbLEr4EHdBES9IvNi9NDgWJgbQeylsHOPeSEXXJG1oXMFV
bNRzQOdJEUzB6ZCJ7GeaM8LOfvfzIJeslxjGYSuOmAsiCEYohy/Gj11ksqEGd9dH29DMJB8y
ISMbWYPNQcaN/MsTAcGoBk9+8jpbW48S31WxVcryQZySIASNpMBZ6pJtMkPlCeNlrVAAL0dv
VKKu8rivLtVwBcjc5Sb2OAIp/ktwE6sOBMsGw9yhkmzYqmYiH4kjZ7LEij8SYjCnSMZkxsqB
/ksOJL8puJIYToYxaKY45ZAZKSkNmissxzmmpEUNsW+fwUtdC8v4CEsyC1n6LBbP/ur40AWd
4mpgvBI079kLaIiLTxC9Rfci1lFpUixz6YNfGhuEsvTl8Hy2LJAFR/JRjI5zf+WD4568tbts
tjNC5amW7ySqrSzd0kzRE1Wpdiix4X3mpUkhlkzTc8EZDjB2sPIjnDY5vxDFdEO9802ttKlK
PCFqq1m0IT2xx0+QPnWmSkVZvdY5rTq9dXqtIitWCEkpSo1xmTTRn1xVxdMfbrWpcV3r4aI6
MAPCNR3+Gg1r0vlYktY1Sdg84jab9lfGqpWJiC3iskrZVcMS5C05PaaLhra9n/kMj/q0Fc/C
CMW84i5uhaza05D2zyQipzjaGx3zRAtVe15jSW6JXFAV/npXrcFzWsIFLheaWxBydENG0KWG
L09XXefyUrvc7a4MsutdmYJ3cBoF4g+BiU43wjOXFzpnNPUmve8Wz6ZXCAYXvzczbbVJb738
jpOIM08AP0907QNqjViHXvqG88A+ba86+2MtI6bXwcs8Qte8GVW48XBZYhxd4K7ipMWBjK6x
XG6LOoo6E/wru81dRl+PWh8Ij5eYKF1ojJLaxg7z78PpDGxYUeXj3lZjhbktV0PXdLT7LnV5
RNvNkfX72p0srRxMdjK5zpSsKyP5oWKqWH5dqD2sPZm/y0NajaFcLSMl13FtSeTnZIbBJw0s
TE0jqFRzB7ramlgok8IfjiWM/lM9Dut6frpXVf0cYkRLeSiDJPRU9frn6Tm6pdQqdFIz9sE9
M5iImS2mVelnX+9p1tMANWqpJZll/5I2viNxbb4Ae8nCYnqyQnOfxhos1c5lWq2ZZlizVNrj
lAqyrY/eNCWjyOlKJSu0DKVI9e4nWWLv+Nh3Pjb5Ltq3ENJK235F84p9JaACPvaUPY1YsiOr
w0HSmjfhYtqizBrsSod72n9lqn4sWchR/3rYZ311Ven8KoDbSOAJzBIlD53cPstb4Tx+d6vA
zNl9H5LDQ/QKjAfF0mrPOsi51rgK0/1KVULYcQ3f8LDNjWuO03viEF/5VxHeRI1uW4u3DrTD
0+jr/sJ2e4/dG84TKU7zOl7qpEsBNtAJtvN195PGL8ohiU1+RX1NsGMHj1SOado4GZr3p7C+
Y7MvbT2q87e/wjr1frGpZJSPg2pOhpbb02Jk3jx52lqKstbnPrkk51fofpPcHM/OoS9Xzb+i
Ebeqv3J4wFu2oDVqZXh9MOOMDjcNkX/8L81VeSBkvp6OtLznPy/i8G4e9BwsnCj1i1w8T5jA
QWtL68H33yrFXkpHfDDpb79Zyenpi6fF9dWlTW07/ZHkXMW98eel9qqL3PFY//jTfd9DlbN8
wsfXbrTlrEKCfxP7Q9L+QN39RO6XWPxpVr2Cq2/9j4nS9a93oiWqJ3zL/tI3WgKtjSLhP31j
o9+7LmtbvxnsYsq0cvZiXG8DSTlGgPv3eVs0dtwTeOC3fdpnJRD4fQUkV94HNAYHdObXeQqI
UdHGcQsWgBzWfCNWcvOmfOdHfR74geoXT7u3YCmYaKzWceo1gwVoU6PHglnTf++ngYKmPMIE
PokXZXWmNDF4g372QjsIesznXDrIhAYDhTwYhU3YgVWIheIzhVnIhY1EdrYXHj94eYcAPAlF
QnsDRG7nCm+SelIxZlvXhejRberVe9w0holmbxC3ZhfFcJzUaWAXh/JhRRgWgyn3gtS0UEl3
YE43fzUnDj03WYFIHxACe0foQ7yVf0q3OXQn/mpl4okzp39LpGCQSGyS2EGkGGurp2h8uGg5
KHV5U1LSs4al2ESeAzEraIo4VDIXV4eRKF2+KIL9wiKcuGdOtU4URT65yB6DqFm/A4clk4kc
tV6LEor9BoKeNUUDqGnKKEfCpm50yGtABnWECFk654swl4iyVotGx43ugTD1YleNWGlERXKG
F3zGpYiGFkiuSHwhhz2KpYLt2B21h1pod3qbBYHtFHeSloZmSEK9ZVBoFngEmYND6D9tKJDR
4YQZyZHzsYUdCZJxsJEhmYV7YzaQRkuG9ZECaTpxojgriSEOeYi6Z4QrSU9pk4ShCIbu1UmC
tl8NCS0U+YxINJMd/pBHb2aUayeSNFiITXmFKuZ85TSNY3gsGDIhQtNjS3dyJXZ+zXRASFlO
74RPgyVyNBl6vdd3Onlm26hho8JMXAOM3rgyjTiHZ8l0VnmJdpmSj9N2DiVmdiZ1MPNlJ4Z/
zlhuV5UzyoFv4QaNr8U0E/UsZFd3aoZ69LdXMLhq1eiIMrF3muE0iWl2GOlxjSd5lGZpdiUL
BOhzWyk/YHeTq8gNsEQoc/WHMndvCtOKOKaOyGaI/WiCv4hOQ0cvhGZ4wklVemlrz0RT+eia
i0dBc+l/7IZGNXhKmzmbaKSVgFhh1Uk1nyVjduFF5vZivGM0xQOd52lS3RmQCTV7+VYH/uQE
boZpjzCIj/60ftLZWRtYXNJHm7dIftphKvt5U97mnC0UjfGoaSO5cPEJd+cTfuylh9bmC4zY
nMAnj15FdEOmj7+Zc/yJncSnLFOmY8XnYS4Vlxs4mn94i+kojS1KIy+6nckEk5yHihVam3mJ
WbhZl8hnm9XmKDJHb0LSnx2KmzeXMIklm+YUiwRimuvocrDJMXOpMqamYReKiygilGaXWqmG
OAYYLhAJnL+RYYc5mao1ke8zpM0GZ/6YmBn4VT+5PpYCe2CKgvomYK/3fJz5hQu5WlajU2x5
pWoZJE8pXxl2MOAEAzOqnEggljtZlu95B9hGBIhKktSVlg9I/o8TSqiVyqlPoaidCqrbFaqj
6kqkaqrjoaCnqqqauqqtqouf6qqxygOwKqu1Wh+0aqu5qj66yqudkKq9CqxsE6zDSku4SqzH
eqnIqqxbgEdi8avnMkJiOYLJuqzuyJPZJhdih4PURmAPKJEAuKLb+KRPZazFWni79YxYxXRs
KljEqJSEBRy9BItvxjsWuK3c2goXtpvWVWQzQabfCo5naYdwUVoFe5D7WGMk8wQoNlRsh2+w
aEfXFFBwaF83SHfX9XNtya5o6Y2KVo8j6ZaO+qiTR44B65TnFX9t+Q1T0p0lGznS2qzBZF6M
5zPhapaesC3vJTCt2Yr2qrMne62s/uqGsXeHTbZPjDWIlJmKxRZ0xQQqVkaQxiSiMadbDpqc
5mm0Qaha7EmnU/mi2SlbILtl94iYjtla5RpKi5GGo+aD0iCN5sOMGXdB8spmCiN7ueVOqZez
DHWGB+dXkuqTOgpy6EOKpqR/7JdlwzIi5XkY/ugwLnpFaJu2trexNsZD5hNrcgtISPVSvMe2
WpVqjrmOAzpb+cGwgRpvGMe51GK4OCqKOeeguyJSRmorgGsHJ+MwB+tTvQaQfAZlYFmenZsa
LwmwRFeEj3O4L4e6JFhTTEsaZdSUSCdwZeUisyswrseaLZE4s3hmiSW3z2tIWEcq1GNIulYW
fyqMFCRE/tC2vJm5ukkXu4WIdOtmvISVYCwqlwQbcVMbnMuJn4ULd7n2g9fYkudrf+iTp2fK
vp2YEAx4m9LyvZ1xoLTbaYqbdfoGhkQ6pfoboDKqmnnHd+8CUWamhPnDlPyBYlaDn9sXrojx
vVQiUR/srd9ijkRmORaLev4EngeslMNEjbbVdcE1w+ekuz8gp2KnMyvGessmv6UYw+p6iZJb
XxkbtLVErXqpOfDIvAWKrwFFtqcDlTc7iQqLxUAiQgj2XNXakTkpZNEYJf8oWNqEXFKsxpcT
GSjZLSzctccrk1+swnUsiaW1vbqzXqXGrYZ8wTtFx4AMLGfMsbQlxlFMZldb6MSMLFruenZX
u5OOmw8JWKKWTHoPhCXba7L0eYJrti9sDMqWxz42K2alnLvsxb1lJ3vqu8qeZ0o3HKEiaBCa
XFSXuUSVfMviFGKCjMBh4csf9X/gaiHLPMxPGL77aKbWaL9WN3Lz97jPzH90KKYtbLOF4p6a
CVuUG5DavEoOSHhQDMZv7Kjz1K5ws8jmXEUNuGmSC13CLM+lt6n5zM9V2s///JbxDNC5KtAD
XavPatAJXcUKzdAe1dAPnZQQLdHWNNEVXZQWjdH1m9EYXdAbXakI7dH/3NEhDZIgTdL5jJMY
W2cnfaoGUAAAOw==

--==--
