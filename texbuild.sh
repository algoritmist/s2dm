#!/bin/bash

echo "Enter path to file without extension: "

read path

mkdir solution


cp $path solution

cp solution
jupyter nbconvert --to latex --no-input solution/*.ipynb

find . -name "*.tex" -exec sed -i '1 a \\ \\usepackage[T2A]{fontenc}\n\\usepackage[utf8]{inputenc}\n\\usepackage[russian]{babel}' {} +
