df-lnp-zip=files/df-lnp-installer.zip
df-lnp=files/df-lnp-installer

all: | files/df-lnp-installer-master
	docker build -t pgrange/dwarf_fortress_lnp .

files/df-lnp-installer-master: files/df-lnp-installer.zip
	cd files; unzip df-lnp-installer.zip

files/df-lnp-installer.zip:
	cd files; curl -L -o df-lnp-installer.zip https://github.com/andrewd18/df-lnp-installer/archive/master.zip

