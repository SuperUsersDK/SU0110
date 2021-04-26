**Opgave 1.1**

```bash
egrep -c 'a' islands.txt
```

**Opgave 1.2** 

```bash
egrep -c 'a|A' islands.txt
```

**Opgave 1.3.a**

```bash
egrep -c 'Emma' emma.txt
```

**Opgave 1.3.b**

```bash
egrep -c 'Emma\.$' emma.txt
```

**Opgave 1.3.c**

```bash
egrep -c '^"' emma.txt
```

**Opgave 1.3.d**

```bash
egrep -c '"$' emma.txt
```

**Opgave 1.3.e**

```bash
egrep -c '^"|"$' emma.txt
```

**Opgave 1.3.f**

```bash
egrep -c '^".*"$' emma.txt
```

**Opgave 1.3.g**

```bash
egrep -c '[[:punct:]]' emma.txt
```

**Opgave 1.3.h**

```bash
egrep -c "'|,|;|\"|-|\." emma.txt 
```

**Opgave 1.3.i**

```bash
echo $((13250-13160)) emma.txt
```

**Opgave 1.7**

```bash
cd /home/bruger/labs/01-shell/bestilling/

NUMBER_OF_FILES=$(ls | wc -l)

if [ $NUMBER_OF_FILES -eq 1 ]
then
  echo Antallet er filer er korrekt
else
  exit 1
fi

if ls [0-9][a-z] &>/dev/null
then
  echo Navnet på filen er korrekt
else
  exit 2
fi

ORD=$(head -1 *)
if [ "$ORD" != bog ]
then
  echo Der står ikke bog på første linje
  exit 3
fi

if cp * ../Kap.5/
then
  echo Kopieringen gik godt. Filen * blev kopieret til Kap.5
else
  echo Kopieringen fejlede
  exit 4
fi
```

**Opgave 1.8**

```bash
if [ ! -f tal ]
then
  
```

**Opgave 1.9**

```bash
cd /home/bruger/labs/01-shell/Kap.5/dir-a/

for AFILE in *
do
  if [ ! -f ../dir-b/$AFILE ]
  then
    echo Filen $AFILE mangler i dir-b
    cp $AFILE ../dir-b/
  fi
done

cat ../dir-b/* > ../Kontrolfil
```


