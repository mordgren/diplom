# Диплом
<a href="http://84.252.131.36/"> Адресс приложения </a>
<H1> Спринт 1. </H1>

<H2> Цель: </H2>

Описываем инфраструктуру и создаем кластер <br>

<H3>Задание 1. Выбираем облачный провайдер и инфраструктуру. </h3>

- В качествет облачного провайдера был выбран <b> Yandex Cloud</b> <br>
- В качестве описания серверной инфраструктуры в облаке был выбран <b>Terraform</b> <br>
- В качестве K8S cluster был выбран <b>microk8s</b> <br>
- Кластер а так же все необходимое будет разворачиваться при помощи <b>Ansible и Bash скриптов</b> <br>

<H4> Развертыевание и установка </H4>
При помощи Terraform описываем желаемую инфраструктуру <br>
- k8s-master, k8s-app, srv <br>
- Используя ansible обновляем все машины <br>
- На k8s машинах устанавливаем microk8s, добавляем worker ноду, ставим Helm <br>
- На srv: устанавливаем docker, добавляем права для использования без рута, устанавливаем gitlab runner и подключаем его к нашему проекту на gitlab <br>
<img src="https://github.com/mordgren/diplom/blob/main/images/terraform.png">
<img src="https://github.com/mordgren/diplom/blob/main/images/ansible_1.png">
<img src="https://github.com/mordgren/diplom/blob/main/images/ansible_2.png">
<H3>Спринт 1 готов</H3>
<h1> Спринт 2. </h1>
<img src="https://github.com/mordgren/diplom/blob/main/images/vars.png">
<img src="https://github.com/mordgren/diplom/blob/main/images/dockerhub.png">
<img src="https://github.com/mordgren/diplom/blob/main/images/cicd.png">
<img src="https://github.com/mordgren/diplom/blob/main/images/getpods.png">
https://gitlab.com/mordgren1/diplom <br>
<H3>Спринт 2 готов</H3>

<h1> Спринт 3. </h1>
Стек Fluentd/Clickhouse/Loghouse развернут в кластере через Helm
<img src="https://github.com/mordgren/diplom/blob/main/images/loghouse.png">
Далее стек Grafana\Prometheus\Blackbox\Node Exporter\Alertmanager
<img src="https://github.com/mordgren/diplom/blob/main/images/dash1.png">
<img src="https://github.com/mordgren/diplom/blob/main/images/dash2.png">
<img src="https://github.com/mordgren/diplom/blob/main/images/dash3.png">
