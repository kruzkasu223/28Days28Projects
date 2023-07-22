#! /bin/bash

# used this script to automate cloning of all the project repositories

echo -e "\n\n\n"
cd '/home/kruz/kruz/code/#28Days28Projects' || exit
pwd

projects=(
  'custom-drag-and-drop'
  'auto-complete-input'
  'analogue-clock'
  'stopwatch'
  'higher-order-component'
  'screen-recorder'
  'password-generator'
  'css-gradient-generator'
  'currency-converter'
  'weather'
  'navigation-interceptor-nextjs'
  'kanban-board'
  'infinite-scrolling'
  'image-gallery'
  'pomodoro'
  'quiz'
  'notes'
  'custom-pagination'
  'html-to-pdf'
  'link-shortner'
  'minimal-ecommerce'
  'crypto-price'
  'tmdb-designed'
  'tree-structure'
  'form-validation'
  'parallax'
  'date-formatter-cli'
  'hacker-news'
)
projectsLength=${#projects[*]}

for (( i=0; i<${projectsLength}; i++ ));
do
  index="$i"
  temp=10
  if [ $i -lt $temp ]
  then
    index="0$i"
  fi
  repoName="$index-${projects[$i]}"
  
  sshHost="git@github-kruzkasu223:kruzkasu223"
  repoUrl="$sshHost/$repoName.git"
  echo -e "repoUrl ==> $repoUrl\n"
  
  echo -e "executing ==> git clone $repoUrl\n"
  git clone $repoUrl
  
  echo -e "executing ==> cd $repoName\n"
  cd $repoName || exit
  
  # echo -e "executing ==> yarn\n"
  # yarn
  
  echo -e "executing ==> cd '/home/kruz/kruz/code/#28Days28Projects'\n"
  cd '/home/kruz/kruz/code/#28Days28Projects' || exit
  
  pwd
done
