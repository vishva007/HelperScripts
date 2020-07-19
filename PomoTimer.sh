function pomodoroFunctionTimer(){  
  mins=$1
  i=0
  while [ "$i" -le "$mins" ]; do
    echo -ne "$i"'\r'
    i=$(($i + 1))
    sleep 60
  done
  for i in {1..10}; do echo -ne '\007'; sleep 0.2; done
}
 
alias pomo=pomodoroFunctionTimer 
