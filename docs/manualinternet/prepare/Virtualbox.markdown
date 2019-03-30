# VirtualBox

Список виртуальных машин

| № | Виртуальные машины | Операционная система              | CPU | RAM   | HDD   | IP             | Netmask       | Gateway      | 
|---|:------------------:| ---------------------------------:|----:|------:|------:|---------------:|--------------:|-------------:|
| 1 | IPFire             | [IPFire](https://www.ipfire.org/) | 1   | 512Mb | 1Gb   | 192.168.56.254 | 255.255.255.0 |  | 
| 2 | Storage            | [CentOS](https://www.centos.org/) | 2   | 2Gb   | 320Gb | 192.168.56.253 | 255.255.255.0 | 192.168.56.254 |
| 3 | Pacient            | Microsoft Windows 7/8.1/10        | 2   | 4Gb   | 32Gb  | DHCP           | 255.255.255.0 | 192.168.56.254 |

Виртуальная машина IPFire имеет два сетевых интерфейса - NAT, Internal. Остальные машины имеют сетевой интерфейс Internal. Это сделано, чтобы у виртуальных машин был доступ к интернету, чтобы хост также имел доступ к виртуальным машинам и изолировать виртуальные машины от прямого доступа из вне.

# Настройка VirtualBox
TODO - Insert VirtualBox-NetworkInterfaces-Setup

Ниже будут приведены настройки для версии **VirtualBox 6.0.** В будущем настройки могут измениться. Также все машины с **BIOS**, поддержка **UEFI** в VirtualBox реализована не полностью. Для нас это не критичное условие.

|  Шаги | Картина  |
|-------|----------|
| ***Common Settings*** |
|  №1. Стартовая страница VirtualBox |  ![Picture1](/images/dm_virtualbox_settings_01.png) |
|  №2. Страница настроек VirtualBox |  ![Picture2](/images/dm_virtualbox_settings_02.png)|
|  №3. Настраеваем сеть в VirtualBox |  ![Picture3](/images/dm_virtualbox_settings_03.png) |
|  №4. Заходим в Менеджер сетей хоста VirtualBox |  ![Picture4](/images/dm_virtualbox_settings_04.png) |
|  №5. Отключаем DHCP-сервер |  ![Picture5](/images/dm_virtualbox_settings_05.png) |
| ***IPFire Virtual Machine*** |
|  №6. Создание IPFire |  ![Picture6](/images/dm_virtualbox_settings_06.png) |
|  №7. Измените настройки виртуальной машины |  ![Picture7](/images/dm_virtualbox_settings_07.png) |
|  №8. Устанавливаем объем ОЗУ для виртуальной машины |  ![Picture8](/images/dm_virtualbox_settings_08.png) |
|  №9. Создаем жесткий диск для виртуальной машины |  ![Picture9](/images/dm_virtualbox_settings_09.png) |
|  №10. Выберем тип жесткого диска для виртуальной машины |  ![Picture10](/images/dm_virtualbox_settings_10.png) |
|  №11. Выберем фиксированный жесткий диск |  ![Picture11](/images/dm_virtualbox_settings_11.png) |
|  №12. Зададим имя, объем жесткого диска |  ![Picture12](/images/dm_virtualbox_settings_12.png)|
|  №13. Ждем пока идет процесс создания жесткого диска |  ![Picture13](/images/dm_virtualbox_settings_13.png) |
|  №14. Виртуальная машина создана |  ![Picture14](/images/dm_virtualbox_settings_14.png) |
|  №15. Изменяем настройки сети |  ![Picture15](/images/dm_virtualbox_settings_15.png) |
|  №16. Измените первый сетевой интерфейс на указанные |  ![Picture16](/images/dm_virtualbox_settings_16.png) |
|  №17. Добавим второй сетевой интерфейс |  ![Picture17](/images/dm_virtualbox_settings_17.png) |
|  №18. Виртуальная машина готова к запуску |  ![Picture18](/images/dm_virtualbox_settings_18.png) |
| ***Storage Virtual Machine*** |
|  №19. Создание Storage |  ![Picture19](/images/dm_virtualbox_settings_19.png) |
|  №20. Установим объем ОЗУ |  ![Picture20](/images/dm_virtualbox_settings_20.png) |
|  №21. Создадим новый жесткий диск |  ![Picture21](/images/dm_virtualbox_settings_21.png) |
|  №22. Выберем формат жесткого диска |  ![Picture22](/images/dm_virtualbox_settings_22.png)|
|  №23. Выберем тип жесткого диска |  ![Picture23](/images/dm_virtualbox_settings_23.png) |
|  №24. Зададим имя и объем жесткого диска |  ![Picture24](/images/dm_virtualbox_settings_24.png) |
|  №25. Ждем пока идет процесс создания жесткого диска |  ![Picture25](/images/dm_virtualbox_settings_15.png) |
|  №26. Виртуальная машина создана |  ![Picture26](/images/dm_virtualbox_settings_26.png) |
|  №27. Добавим новый жесткий диск к виртуальной машине |  ![Picture27](/images/dm_virtualbox_settings_27.png) |
|  №28. Добавим жесткий диск к контроллеру SATA |  ![Picture28](/images/dm_virtualbox_settings_28.png) |
|  №29. Выбираем опцию "Создать новый диск" |  ![Picture29](/images/dm_virtualbox_settings_29.png) |
|  №30. Выберем формат жесткого диска |  ![Picture30](/images/dm_virtualbox_settings_30.png) |
|  №31. Выберем тип жесткого диска |  ![Picture31](/images/dm_virtualbox_settings_31.png) |
|  №32. Зададим имя жесткого диска |  ![Picture32](/images/dm_virtualbox_settings_32.png)|
|  №33. Объем жесткого диска |  ![Picture33](/images/dm_virtualbox_settings_33.png) |
|  №34. Ждем пока идет процесс создания жесткого диска |  ![Picture34](/images/dm_virtualbox_settings_34.png) |
|  №35. Жесткий диск добавлен в виртуальную машину |  ![Picture35](/images/dm_virtualbox_settings_35.png) |
|  №36. Изменим настройки сети |  ![Picture36](/images/dm_virtualbox_settings_36.png) |
|  №37. Виртуальная машина готова к запуску |  ![Picture37](/images/dm_virtualbox_settings_37.png) |
| ***Pacient Virtual Machine*** |
|  №38. Создаем виртуальную машину Pacient |  ![Picture38](/images/dm_virtualbox_settings_38.png) |
|  №39. Задаем объем памяти |  ![Picture39](/images/dm_virtualbox_settings_39.png) |
|  №40. Добавим жесткий диск |  ![Picture40](/images/dm_virtualbox_settings_40.png) |
|  №41. Выберем формат жесткого диска |  ![Picture41](/images/dm_virtualbox_settings_41.png) |
|  №42. Выберем тип жесткого диска |  ![Picture42](/images/dm_virtualbox_settings_42.png)|
|  №43. Ожидаем пока создаться жесткий диск |  ![Picture44](/images/dm_virtualbox_settings_44.png) |
|  №44. Ждем пока идет процесс создания жесткого диска |  ![Picture44](/images/dm_virtualbox_settings_44.png) |
|  №45. Изменим настройки сети |  ![Picture47](/images/dm_virtualbox_settings_47.png) |
|  №46. Запуск виртуальной машины |  ![Picture45](/images/dm_virtualbox_settings_45.png) |
|  №47. Выберем сетевую загрузку |  ![Picture46](/images/dm_virtualbox_settings_46.png) |


[Previous](../prepare.markdown) | [Up](../prepare.markdown) | [Next](./IPFire.markdown)
