!/bin/bash

i=0

while [[ $i -lt 1000 ]]; do
  mkdir -p ~/esercizio/A$i/B$i/C$i/D$i
  a=0

  while [[ $a -lt 1000 ]]; do
    dd if=/dev/random bs=1024 count=40 | base64 > ~/esercizio/A$i/B$i/C$i/D$i/file$a && truncate -s 40K ~/esercizio/A$i/B$i/C$i/D$i/file$a
    ((a++))
  done

  ((i++))
done

start=`date +%s`

tar -cjvf esercizio.tar.bz2 esercizio
scp -r ~/esercizio.tar.bz2 dan@192.168.2.185:~/
rm ~/esercizio.tar.bz2
ssh  dan@192.168.2.185 "tar -xjf ~/esercizio.tar.bz2 && rm ~/esercizio.tar.bz2"

r=0

while [[ $r -lt 100 ]]; do
  rdir=$((RANDOM % 1000))
  rfile=$((RANDOM % 1000))

  cat /dev/null > ~/esercizio/A$rdir/B$rdir/C$rdir/D$rdir/file$rfile
  dd if=/dev/random of=~/esercizio/A$rdir/B$rdir/C$rdir/D$rdir/mod$rfile bs=1024 count=40
  echo The ~/esercizio/A$rdir/B$rdir/C$rdir/D$rdir/file$rfile files have been modified.
  ((r++))
done

rsync -av ~/esercizio dan@192.168.2.185:~/

end=`date +%s`
echo Esecution time was `expr $end - $start` seconds.

