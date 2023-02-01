#! /bin/bash

# used this script to automate creation of all the project directory and initialize git and setup github repo

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
  
  echo "git submodule add 'https://github.com/kruzkasu223/$fileName'"
  git submodule add "https://github.com/kruzkasu223/$fileName"
  # to update => git submodule update --remote --merge => then commit and push
  
  echo "git add ."
  git add .
  
  echo "git commit -m 'added submodule $fileName'"
  git commit -m "added submodule $fileName"
done
