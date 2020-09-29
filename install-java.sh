#!/usr/bin/env bash

# Generated by mc-utilities

find . -name .DS_Store -print -delete

PACK_NAME="vanillafault"

# Set window title. This is complicated on linux
echo -ne "\033]0;$PACK_NAME Java Edition Installation\007"

cd "$PWD"

MINECRAFT_FOLDER="$HOME/.minecraft"

if [[ "$OSTYPE" == "darwin"* ]]; then
    MINECRAFT_FOLDER="$HOME/Library/Application Support/minecraft"
fi

RESOURCE_FOLDER="$MINECRAFT_FOLDER/resourcepacks"

echo
echo ==============================
echo Making resource pack folders...
echo ==============================
echo

mkdir "$RESOURCE_FOLDER"

### Base pack
rm -R "$RESOURCE_FOLDER/$PACK_NAME"

mkdir "$RESOURCE_FOLDER/$PACK_NAME"

### Variation vanillafault (Long Swords)
rm -R "$RESOURCE_FOLDER/vanillafault (Long Swords)"

mkdir "$RESOURCE_FOLDER/vanillafault (Long Swords)"

### Variation vanillafault (Short Swords)
rm -R "$RESOURCE_FOLDER/vanillafault (Short Swords)"

mkdir "$RESOURCE_FOLDER/vanillafault (Short Swords)"

### Variation vanillafault (Short Swords and Short Guards)
rm -R "$RESOURCE_FOLDER/vanillafault (Short Swords and Short Guards)"

mkdir "$RESOURCE_FOLDER/vanillafault (Short Swords and Short Guards)"

### Variation vanillafault (Medium Swords)
rm -R "$RESOURCE_FOLDER/vanillafault (Medium Swords)"

mkdir "$RESOURCE_FOLDER/vanillafault (Medium Swords)"

### Variation vanillafault (Henry's 1.14 default edit Swords)
rm -R "$RESOURCE_FOLDER/vanillafault (Henry's 1.14 default edit Swords)"

mkdir "$RESOURCE_FOLDER/vanillafault (Henry's 1.14 default edit Swords)"

### Variation vanillafault (Azula Swords)
rm -R "$RESOURCE_FOLDER/vanillafault (Azula Swords)"

mkdir "$RESOURCE_FOLDER/vanillafault (Azula Swords)"

echo
echo ==============================
echo Copying the files...
echo ==============================
echo

### Base pack
cp -v -f -R "$PWD/out/vanillafault/." "$RESOURCE_FOLDER/$PACK_NAME"

### Variation vanillafault (Long Swords)
cp -v -f -R "$PWD/out/vanillafault (Long Swords)/." "$RESOURCE_FOLDER/vanillafault (Long Swords)"

### Variation vanillafault (Short Swords)
cp -v -f -R "$PWD/out/vanillafault (Short Swords)/." "$RESOURCE_FOLDER/vanillafault (Short Swords)"

### Variation vanillafault (Short Swords and Short Guards)
cp -v -f -R "$PWD/out/vanillafault (Short Swords and Short Guards)/." "$RESOURCE_FOLDER/vanillafault (Short Swords and Short Guards)"

### Variation vanillafault (Medium Swords)
cp -v -f -R "$PWD/out/vanillafault (Medium Swords)/." "$RESOURCE_FOLDER/vanillafault (Medium Swords)"

### Variation vanillafault (Henry's 1.14 default edit Swords)
cp -v -f -R "$PWD/out/vanillafault (Henry's 1.14 default edit Swords)/." "$RESOURCE_FOLDER/vanillafault (Henry's 1.14 default edit Swords)"

### Variation vanillafault (Azula Swords)
cp -v -f -R "$PWD/out/vanillafault (Azula Swords)/." "$RESOURCE_FOLDER/vanillafault (Azula Swords)"

echo
echo Done!
echo

# Set window title. This is complicated on linux
echo -ne "\033]0;Finished installing!\007"

read -p "Press enter/return to exit . . ."