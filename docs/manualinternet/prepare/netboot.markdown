# Настройка загрузки по сети

Шаги:

* Установим необходимые пакеты;
* Разобъем жесткий диск;
* Отформатируем жесткий диск;
* Создадим новый сервис;
* Настроем samba;
* Попробуем подключиться с компьютера на сетевую папку;

|  Шаги | Картина  |
|-------|----------|
|  №58. Загрузите установочный образ Windows 10|  ![Picture58](/images/dm_virtualbox_storage_58.png) |
|  №59. С помощью архиватора 7zip, откроем содержимое образа|  ![Picture59](/images/dm_virtualbox_storage_59.png) |
|  №60. Находим файл boot.wim, копируем в Загрузки |  ![Picture60](/images/dm_virtualbox_storage_60.png) |
|  №61. Настройки папку boot, копируем в Загрузки |  ![Picture61](/images/dm_virtualbox_storage_61.png) |
|  №62. Все необходимые файлы скопированы |  ![Picture62](/images/dm_virtualbox_storage_62.png)|
|  №63. Переносим файлы на сетевой ресурс |  ![Picture63](/images/dm_virtualbox_storage_63.png) |
|  №64. Устанавливаем необходимые пакеты |  ![Picture64](/images/dm_virtualbox_storage_64.png) |
|  №65. Необходимо скачать последнею версию пакета wimboot |  ![Picture65](/images/dm_virtualbox_storage_65.png) |
|  №66. Открываем страницу https://rom-o-boot.eu, создаем базовый ipxe образ |  ![Picture66](/images/dm_virtualbox_storage_66.png) |
|  №67. Скопируем файл undionly.kpxe на сетевой ресурс |  ![Picture67](/images/dm_virtualbox_storage_67.png) |
|  №68. Сделаем сервис httpd загружаемым при загрузке|  ![Picture68](/images/dm_virtualbox_storage_68.png) |
|  №69. Скопируем файл undionly.kpxe в папку /var/www/html |  ![Picture69](/images/dm_virtualbox_storage_69.png) |
|  №70. Добавим правило в firewall |  ![Picture70](/images/dm_virtualbox_storage_70.png) |
|  №71. Создаем папку для tftp-сервера |  ![Picture71](/images/dm_virtualbox_storage_71.png) |
|  №72. Настройки firewall, добавим порты tftp |  ![Picture72](/images/dm_virtualbox_storage_72.png)|
|  №73. Содержимое конфигурационного файла /etc/dnsmasq.conf |  ![Picture73](/images/dm_virtualbox_storage_73.png) |
|  №74. Загрузим дополнительные пакеты - архиватор zip, unzip |  ![Picture74](/images/dm_virtualbox_storage_74.png) |
|  №75. Распакуем файл wimboot-latest.zip |  ![Picture75](/images/dm_virtualbox_storage_75.png) |
|  №76. Копируем файл wimboot на папку веб-сервера |  ![Picture76](/images/dm_virtualbox_storage_76.png) |
|  №77. Копируем файл boot.wim на папку веб-сервера |  ![Picture77](/images/dm_virtualbox_storage_77.png) |
|  №78. Содержимое папки веб-сервера |  ![Picture78](/images/dm_virtualbox_storage_78.png) |
|  №79. Содержимое файла ipxe/boot.ipxe |  ![Picture79](/images/dm_virtualbox_storage_79.png) |
|  №80. Содержимое файла winpeshl.ini |  ![Picture80](/images/dm_virtualbox_storage_80.png) |


[Previous](./Storage.markdown) | [Up](../prepare.markdown) | [Next](../inventarization.markdown)
