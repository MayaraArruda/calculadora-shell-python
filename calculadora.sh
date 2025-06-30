#!/bin/bash

echo "Calculadora Simples"
echo "Digite o primeiro número:"
read num1

echo "Digite o segundo número:"
read num2

echo "Escolha a operação: + - * /"
read operacao

case $operacao in
  +)
    resultado=$(echo "$num1 + $num2" | bc)
    ;;
  -)
    resultado=$(echo "$num1 - $num2" | bc)
    ;;
  \*)
    resultado=$(echo "$num1 * $num2" | bc)
    ;;
  /)
    if [ "$num2" -eq 0 ]; then
      echo "Erro: divisão por zero"
      exit 1
    fi
    resultado=$(echo "scale=2; $num1 / $num2" | bc)
    ;;
  *)
    echo "Operação inválida"
    exit 1
    ;;
esac

echo "Resultado: $resultado"



