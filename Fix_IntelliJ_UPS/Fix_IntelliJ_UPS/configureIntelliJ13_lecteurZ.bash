#!/bin/bash

SRCDIR=$(cd "$(dirname "$0")"; pwd)
FILE0="idea_template.properties"
FILE1="idea.properties"
CHEMIN_INTELLIJ="Z:/$USERNAME/.IntelliJIdea13"
# => NO BACKSLASH HERE !

DSTDIR1="$USERPROFILE"
DSTDIR2="$USERPROFILE/.IntelliJIdea13"
DSTDIR3="C:/Users/$USERNAME"
DSTDIR4="C:/Users/$USERNAME/.IntelliJIdea13"
# => normally DSTDIR2 = DSTDIR4 (mod backslashes), but better safe than sorry

echo
echo "Doing 'sed -e \"s|CHEMIN_INTELLIJ|$CHEMIN_INTELLIJ|\" \"$SRCDIR/$FILE0\" > \"$SRCDIR/$FILE1\"'..."
sed -e "s|CHEMIN_INTELLIJ|$CHEMIN_INTELLIJ|" "$SRCDIR/$FILE0" > "$SRCDIR/$FILE1"
echo

echo "Doing 'mkdir -p "$CHEMIN_INTELLIJ"'..."
mkdir -p "$CHEMIN_INTELLIJ"
echo

echo "Doing 'mkdir -p "$DSTDIR2"'..."
mkdir -p "$DSTDIR2"
echo

echo "Doing 'mkdir -p "$DSTDIR4"'..."
mkdir -p "$DSTDIR4"
echo

echo "Doing 'cp \"$SRCDIR/$FILE1\" \"$DSTDIR1/$FILE1\"..."
cp "$SRCDIR/$FILE1" "$DSTDIR1/$FILE1"
echo

echo "Doing 'cp \"$SRCDIR/$FILE1\" \"$DSTDIR2/$FILE1\"..."
cp "$SRCDIR/$FILE1" "$DSTDIR2/$FILE1"
echo

echo "Doing 'cp \"$SRCDIR/$FILE1\" \"$DSTDIR3/$FILE1\"..."
cp "$SRCDIR/$FILE1" "$DSTDIR3/$FILE1"
echo

echo "Doing 'cp \"$SRCDIR/$FILE1\" \"$DSTDIR4/$FILE1\"..."
cp "$SRCDIR/$FILE1" "$DSTDIR4/$FILE1"
echo

echo "Doing 'cp \"$SRCDIR/$FILE1\" \"$CHEMIN_INTELLIJ/$FILE1\"..."
cp "$SRCDIR/$FILE1" "$CHEMIN_INTELLIJ/$FILE1"
echo

# Otherwise: set the IDEA_PROPERTIES env var & run IntelliJ from a .bat script

echo "IntelliJ is now configured with folder $CHEMIN_INTELLIJ"
echo "You can now launch IntelliJ!"

# Tested with IntelliJ IDEA 13.1.3 Build #IU-135.909

echo
read -p "Appuyez sur Entrée..."
