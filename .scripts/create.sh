#! /bin/bash

# used this script to automate creation of all the project directory and initialize git and setup github repo

cd '/home/kruz/kruz/code/28Days28Projects'
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
  # 'tic-tac-toe-chatgpt-[bonus]'
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
  fileName="$index-${projects[$i]}"
  echo "mkdir $fileName"
  mkdir "$fileName"
  
  echo "cd $fileName"
  cd "$fileName"
  pwd
  
  fileName2="$index/$((projectsLength - 1))-${projects[$i]}"
  echo "echo "\# $fileName2" >> README.md"
  echo "# $fileName2" >> "README.md"
  
  echo "git init"
  git init
  
  echo "gh repo create $fileName --private --source=. --remote=origin"
  gh repo create "$fileName" --private --source=. --remote=origin
  
  echo "git add ."
  git add .
  
  echo "git commit -m 'init commit :sparkles:'"
  git commit -m 'init commit :sparkles:'
  
  echo "git push -u origin main"
  git push -u origin main
  
  echo "cd '/home/kruz/kruz/code/28Days28Projects'"
  cd '/home/kruz/kruz/code/28Days28Projects'
  
  pwd
done
