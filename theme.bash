#!/bin/bash

# download themes for gccz map

	echo 
	read -p " I am create directory '`pwd`/_themes'? [Y/n]: "
	if [ "${REPLY/Y/y}" = "y" ]; then

	THEMES=( paws.zip paws_4.zip paws_4_LE.zip paws_L.zip paws_S.zip paws_XL.zip paws_XXL.zip paws_cyclist.zip paws_cyclist_L.zip paws_cyclist_S.zip paws_mix.zip paws_tourist.zip paws_tourist_L.zip paws_tourist_S.zip )

	echo 
	echo " SUMMER or WINTER theme?"
	select GENERE in paws_themes paws_themes_winter; do break ; done
	mkdir _themes
	cd _themes
	for x in $(seq 0 1000); do
	[[ -z ${THEMES[$x]} ]] && break
	wget http://osm.paws.cz/$GENERE/${THEMES[$x]} && \
	unzip ${THEMES[$x]} && \
	rm ${THEMES[$x]}
	done
	fi

exit

