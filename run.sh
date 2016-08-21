#!/bin/bash


fileName=$1
echo $fileName
path=$(pwd)
echo $path
absolutePath=$path\/$fileName
echo $absolutePath
(gcc -o $absolutePath.out  $absolutePath) && ./$fileName.out
