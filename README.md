# GRAFANA de ambiente de monitoamento, grafana e prometheus
criando ambiente de monitoramento grafana com jobs prometheus, usando google cloud, terraform .

instalando grafana

sudo apt-get install -y apt-transport-https

sudo apt-get install -y software-properties-common wget

wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -

echo "deb https://packages.grafana.com/enterprise/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list

echo "deb https://packages.grafana.com/enterprise/deb beta main" | sudo tee -a /etc/apt/sources.list.d/grafana.list

sudo apt-get update

sudo apt-get install grafana-enterprise -y


systemctl start grafana-server
systemctl status grafana-server

netstat -atunp | grep 3000
