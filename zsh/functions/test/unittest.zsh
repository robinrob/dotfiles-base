source ../../colors.zsh


function assert {
  assertion=$1
  msg=$2


  print $assertion

  printf "\t"

  if [ $(eval "$assertion") ]
  then
    assertSuccess $msg
  else
    assertFailure $msg
  fi
  return $?
}


function assertFileDoesNotExist {
  filename="$1"
  msg=$2

  printf "\t"
  ([ ! -f "$filename" ] && assertSuccess $msg) || (assertFailure $msg)
}


function assertFileDoesExist {
  filename="$1"
  msg=$2

  printf "\t"
  ([ -f "$filename" ] && assertSuccess $msg) || (assertFailure $msg)
}


function incValue {
  name=$1

  val=$(getValue $name)
  (( val += 1))

  setValue $name $val
}


function decValue {
  name=$1

  val=$(getValue $name)
  (( val -= 1))

  setValue $name $val
}


function getValue {
  name=$1
  value=$2

  val=$(ggrep -Po "(?<=$name )([0-9]+)" .test_stats)
  print $val

}

function setValue {
  name=$1
  value=$2

  gsed -i "s/$name \([0-9]\+\)/$name $value/" .test_stats
}


function assertSuccess {
  msg=$1

  incValue passed

  print "$(green Passed:) $(cyan $msg)"
  return 0
}


function assertFailure {
  msg=$1

  incValue failed

  print "$(red Assertion failed:) $(cyan $msg)"
  return 1
}


function runtest {
  test=$1

  print "Running test: $(yellow $test) ... "

  eval "$test"
}


function suite {
  rm -f .test_stats
  touch .test_stats
  echo "passed 0" >> .test_stats
  echo "failed 0" >> .test_stats
}


function stats {
  print '==============================================================================='
  green "Passed assertions: $(getValue passed)"
  (( failed > 0 )) && red "Failed assertions: $(getValue failed)"
  print '==============================================================================='
}
