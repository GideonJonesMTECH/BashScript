textfile1=file1.txt
textfile2=file2.txt

if [[ -z ${1} ]]; then
  echo "you need to pass a param on the cli"
  exit
else
  echo "value of positional param: ${1}"
fi


echo "What's your username?"
read username
echo "What's your password?"
read password

  if [[ ${username} != "Gideon" ]] || [[ ${password} != "NotWebDev" ]]; then
    echo "You should not be here!"
    exit 1
  else
    echo "Welcome Gideon..."
  fi

  echo "Authentication accepted, Thanks" ${username} ". Now, let's get to that script."

  echo "The Script is Starting..."

  cd ~/Desktop
  mkdir newDir
  cd newDir
  echo "You should read Steelheart By Brandon Sanderson" > ${textfile1}
  mv file1.txt ..
  pwd
  cd ..
  mkdir TXT
  echo ${1} > ${textfile2}
  mv file1.txt TXT
  mv file2.txt TXT
  rm -rf newDir
  cd TXT
  echo ${textfile1}
  cat ${textfile1}
  echo ${textfile2}
  cat ${textfile2}
  pwd
  cd ..
  ls
  echo “Script finished. If variable 1 and variable 2 are in TXT folder you passed”
