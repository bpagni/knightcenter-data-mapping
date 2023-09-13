all: directories download freshdata

directories:
	-mkdir tmp
	-mkdir data
# la - davanti è per dire a MF di ignorare un errore nel caso dovesse presentarsi
# mkdir sta per 'make directories' che dovrebbe essere proprio un comando di makefile
# mi crea letteralmente delle directories a sx

download:
	curl "https://www.imf.org/external/datamapper/api/v1/PCPIPCH?periods=2023" -o tmp/inflation.json
	curl "https://www.imf.org/external/datamapper/api/v1/countries" -o tmp/countries.json

freshdata:
	node imf_to_csv.js

greeting:
	echo 'hello Benni, dai che ce la facciamo'


