#!/bin/bash

# Script para criar e configurar um novo projeto Expo

# Solicita o caminho onde armazenar o projeto ao usuário
echo "Digite o caminho onde deseja armazenar o projeto (por exemplo, ~/GitHub):"
read project_path

# Solicita o nome do projeto ao usuário
echo "Digite o nome do projeto:"
read project_name

# Navega até o caminho fornecido pelo usuário
cd $project_path

# Cria um novo projeto Expo
npx create-expo-app $project_name

# Navegue para a pasta do projeto
cd $project_name

# Imprime uma mensagem de conclusão
echo "Projeto Expo '$project_name' criado e configurado com sucesso em $project_path/$project_name"

# Abrir o projeto no Visual Studio Code
echo "Abrindo o projeto no Visual Studio Code..."
code .
