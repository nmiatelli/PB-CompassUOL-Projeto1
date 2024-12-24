#!/bin/bash

#Diretório onde serão gravados os aqruivos de  script e de log
DIR="/projeto-linux/"

#Informações de data e hora
DATA=$(date '+%y-%m-%d %H:%M:%S')

#Nome do serviço
SERVICO="nginx"


#Verifica o status do serviço

if systemctl is-active --quiet  $SERVICO; then
	echo "Data: $DATA ||Serviço: $SERVICO ||Status: ONLINE ||Mensagem: O serviço está em execução." >> "$DIR/online.log"
	echo " O serviço está online!"								#Cria um arquivo de log dentro do diretorio criado no início do script
	#mensagem que aparece ao executar o script manualmente
else
	echo "Data: $DATA ||Serviço: $SERVICO ||Status: OFFLINE ||Mensagem: O serviço não está em execução." >> "$DIR/offline.log"
	echo "O serviço está offline!"
fi

