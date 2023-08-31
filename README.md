#Piwigo Docker on Raspberry Pi

If you already have images put them into the `html/piwigo/galleries` directory. Symbolic should work but only before the first up.

The scrips installs an mysql server in the piwigo container, this does not get used, but without it I get multiple errors during the piwigo installation

Copy the .env.sample to an .env and change your credentials as you wish.

````
docker compose build
docker compose up
````
