#!/bin/bash

# Limite de tamanho
if [ ${#1} -gt 10 ]; then
  echo "Máximo de 10 letras!"
  exit 1
fi

# Converte para maiúsculo
WORD=$(echo "$1" | tr '[:lower:]' '[:upper:]')

# Função para cada letra (5 linhas)
print_letter() {
  case "$1" in
    A) echo -e " ### \n#   #\n#####\n#   #\n#   #";;
    B) echo -e "#### \n#   #\n#### \n#   #\n#### ";;
    C) echo -e " ####\n#    \n#    \n#    \n ####";;
    D) echo -e "#### \n#   #\n#   #\n#   #\n#### ";;
    E) echo -e "#####\n#    \n#####\n#    \n#####";;
    F) echo -e "#####\n#    \n#####\n#    \n#    ";;
    G) echo -e " ####\n#    \n#  ##\n#   #\n ####";;
    H) echo -e "#   #\n#   #\n#####\n#   #\n#   #";;
    I) echo -e "#####\n  #  \n  #  \n  #  \n#####";;
    J) echo -e "#####\n   # \n   # \n#  # \n ##  ";;
    K) echo -e "#   #\n#  # \n###  \n#  # \n#   #";;
    L) echo -e "#    \n#    \n#    \n#    \n#####";;
    M) echo -e "#   #\n## ##\n# # #\n#   #\n#   #";;
    N) echo -e "#   #\n##  #\n# # #\n#  ##\n#   #";;
    O) echo -e " ### \n#   #\n#   #\n#   #\n ### ";;
    P) echo -e "#### \n#   #\n#### \n#    \n#    ";;
    Q) echo -e " ### \n#   #\n#   #\n#  ##\n ####";;
    R) echo -e "#### \n#   #\n#### \n#  # \n#   #";;
    S) echo -e " ####\n#    \n ### \n    #\n#### ";;
    T) echo -e "#####\n  #  \n  #  \n  #  \n  #  ";;
    U) echo -e "#   #\n#   #\n#   #\n#   #\n ### ";;
    V) echo -e "#   #\n#   #\n#   #\n # # \n  #  ";;
    W) echo -e "#   #\n#   #\n# # #\n## ##\n#   #";;
    X) echo -e "#   #\n # # \n  #  \n # # \n#   #";;
    Y) echo -e "#   #\n # # \n  #  \n  #  \n  #  ";;
    Z) echo -e "#####\n   # \n  #  \n #   \n#####";;
    *) echo -e "?????\n?????\n?????\n?????\n?????";;
  esac
}

# Armazena linhas
lines=("" "" "" "" "")

# Monta palavra
for (( i=0; i<${#WORD}; i++ )); do
  letter=$(print_letter "${WORD:$i:1}")
  IFS=$'\n' read -rd '' -a arr <<<"$letter"

  for j in {0..4}; do
    lines[$j]+="${arr[$j]}  "
  done
done

# Exibe
echo
for line in "${lines[@]}"; do
  echo "$line"
done

echo