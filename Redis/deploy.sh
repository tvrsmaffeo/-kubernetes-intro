#!/usr/bin/env bash
#Instalar o helm
helm install
#add repo r-
helm repo add bitnami https://charts.bitnami.com/bitnami
#upgrade de repo redis
helm upgrade redis bitnami/redis --install --namespace=kubernetes-intro --values=/redis/values.yaml
#upgrade de repo guestbook
helm upgrade guestbook ./guestbook-config --install --namespace=kubernetes-intro --values=/redis/values.yaml
#Verifique a existência de um chart helm instalado
helm ls
#Verifique a quais repositórios você está conectado
helm repo list
# Senha do repositório chart onde será localizado o chart requisitado
helm show values values.yaml --password $1
