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
|  №1. Стартовая страница VirtualBox |  ![Picture1](/images/dm_virtualbox_settings_01.png) |
|  №2. Страница настроек VirtualBox |  ![Picture2](/images/dm_virtualbox_settings_02.png)|
|  №3. Настраеваем сеть в VirtualBox |  ![Picture3](/images/dm_virtualbox_settings_03.png) |
|  №4. Заходим в Менеджер сетей хоста VirtualBox |  ![Picture4](/images/dm_virtualbox_settings_04.png) |
|  №5. Отключаем DHCP-сервер |  ![Picture5](/images/dm_virtualbox_settings_05.png) |
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


# Установка и настройка IPFIRE

Для установки IPFire использовался следующий образ ISO ipfire-2.21.x86_64-full-core126. 

|  Шаги | Картина  |
|-------|----------|
|  №1. Загрузите установчный образ со официальной страницы |  ![Picture1](/images/dm_virtualbox_ipfire_01.png) |
|  №2. Запуск виртуальной машины |  ![Picture2](/images/dm_virtualbox_ipfire_02.png)|
|  №3. Выберите установочный образ |  ![Picture3](/images/dm_virtualbox_ipfire_03.png) |
|  №4. Начинаем процесс установки |  ![Picture4](/images/dm_virtualbox_ipfire_04.png) |
|  №5. Выбираем язык установки - English |  ![Picture5](/images/dm_virtualbox_ipfire_05.png) |
|  №6. Начинаем установку |  ![Picture6](/images/dm_virtualbox_ipfire_06.png) |
|  №7. Соглашаемся с лицензионным соглашением |  ![Picture7](/images/dm_virtualbox_ipfire_07.png) |
|  №8. Подготовим жесткий диск к установке |  ![Picture8](/images/dm_virtualbox_ipfire_08.png) |
|  №9. Выберем формат файловой системы - ext4 |  ![Picture9](/images/dm_virtualbox_ipfire_09.png) |
|  №10. Ждем окончания процесса установки |  ![Picture10](/images/dm_virtualbox_ipfire_10.png) |
|  №11. Перегружаем виртуальную машину |  ![Picture11](/images/dm_virtualbox_ipfire_11.png) |
|  №12. Выберем раскладку клавиатуры - us |  ![Picture12](/images/dm_virtualbox_ipfire_12.png)|
|  №13. Выберем временную зону |  ![Picture13](/images/dm_virtualbox_ipfire_13.png) |
|  №14. Зададим имя доменной зоны |  ![Picture14](/images/dm_virtualbox_ipfire_14.png) |
|  №15. Зададим имя доменной зоны |  ![Picture15](/images/dm_virtualbox_ipfire_15.png) |
|  №16. Зададим пароль суперпользователя root |  ![Picture16](/images/dm_virtualbox_ipfire_16.png) |
|  №17. Зададим пароль пользователя admin |  ![Picture17](/images/dm_virtualbox_ipfire_17.png) |
|  №18. Настройка сети |  ![Picture18](/images/dm_virtualbox_ipfire_18.png) |
|  №19. Назначим сетевые карты |  ![Picture19](/images/dm_virtualbox_ipfire_19.png) |
|  №20. Выберем сетевую карту для Green |  ![Picture20](/images/dm_virtualbox_ipfire_20.png) |
|  №21. Выберем первый сетевой интерфейс |  ![Picture21](/images/dm_virtualbox_ipfire_21.png) |
|  №22. Выберем сетевую карту для RED |  ![Picture22](/images/dm_virtualbox_ipfire_22.png)|
|  №23. Выберем доступный сетевой интерфейс |  ![Picture23](/images/dm_virtualbox_ipfire_23.png) |
|  №24. Завершим выбор сетевых интерфейсов |  ![Picture24](/images/dm_virtualbox_ipfire_24.png) |
|  №25. Зададим адреса для сетевых интерфейсов |  ![Picture25](/images/dm_virtualbox_ipfire_25.png) |
|  №26. Выберем интерфейс GREEN |  ![Picture26](/images/dm_virtualbox_ipfire_26.png) |
|  №27. Нас предупреждают, что подключенные удаленные пользователи могут отключиться |  ![Picture27](/images/dm_virtualbox_ipfire_27.png) |
|  №28. Зададим адрес, сетевую маску |  ![Picture28](/images/dm_virtualbox_ipfire_28.png) |
|  №29. Выберем интерфейс RED |  ![Picture29](/images/dm_virtualbox_ipfire_29.png) |
|  №30. Выберем DHCP |  ![Picture30](/images/dm_virtualbox_ipfire_30.png) |
|  №31. Завершим настройку сетевых интерфейсов |  ![Picture31](/images/dm_virtualbox_ipfire_31.png) |
|  №32. Выходим из меню Сетевых настроек |  ![Picture32](/images/dm_virtualbox_ipfire_32.png)|
|  №33. Настроем DHCP-сервер на сетевом интерфейсе GREEN |  ![Picture33](/images/dm_virtualbox_ipfire_33.png) |
|  №35. Откроем веб-консоль IPFire по адресу http://192.168.56.254:81 |   |
|  №36. Откроем настройки DHCP-сервера |  ![Picture35](/images/dm_virtualbox_ipfire_35.png) |
|  №37. Добавим новые опции |  ![Picture36](/images/dm_virtualbox_ipfire_36.png) |


# Установка Centos

Установка CentOS будет проведена в ручном режиме, для установки использовался последний доступный релиз. Установка через kickstart-файл будет доступна позднее.

|  Шаги | Картина  |
|-------|----------|
|  №1. Загрузите установчный образ со официальной страницы |  ![Picture1](/images/dm_virtualbox_storage_01.png) |
|  №2. Запуск виртуальной машины |  ![Picture2](/images/dm_virtualbox_storage_02.png)|
|  №3. Нажмите TAB, чтобы получить к строке загрузки, выберем установку в текстовом режиме |  ![Picture3](/images/dm_virtualbox_storage_03.png) |
|  №4. Основное окно установки |  ![Picture4](/images/dm_virtualbox_storage_04.png) |
|  №5. Настроем временную зону |  ![Picture5](/images/dm_virtualbox_storage_05.png) |
|  №6. Настроем временную зону |  ![Picture6](/images/dm_virtualbox_storage_06.png) |
|  №7. Настроем временную зону |  ![Picture7](/images/dm_virtualbox_storage_07.png) |
|  №8. Настроем сеть |  ![Picture8](/images/dm_virtualbox_storage_08.png) |
|  №9. Настроем сетевой интерфейс |  ![Picture9](/images/dm_virtualbox_storage_09.png) |
|  №10. Настроем сетевой интерфейс |  ![Picture10](/images/dm_virtualbox_storage_10.png) |
|  №11. Интерфейс настроен как DHCP-клиент, сеть будет запущена после перегрузки, применим сетевые настройки в установщике |  ![Picture11](/images/dm_virtualbox_storage_11.png) |
|  №12. Завершаем настройку сети |  ![Picture12](/images/dm_virtualbox_storage_12.png)|
|  №13. Выберем источник для установки |  ![Picture13](/images/dm_virtualbox_storage_13.png) |
|  №14. Выберем загрузку файлов по сети |  ![Picture14](/images/dm_virtualbox_storage_14.png) |
|  №15. Выберем протокол |  ![Picture15](/images/dm_virtualbox_storage_15.png) |
|  №16. Указываем репозиторий |  ![Picture16](/images/dm_virtualbox_storage_16.png) |
|  №17. Завершаем настройку источника |  ![Picture17](/images/dm_virtualbox_storage_17.png) |
|  №18. Необходимо подождать, пока установщик скачает файлы и определит доступные пакеты |  ![Picture18](/images/dm_virtualbox_storage_18.png) |
|  №19. Выберем жесткий диск для установки |  ![Picture19](/images/dm_virtualbox_storage_19.png) |
|  №20. Выберем жесткий диск sda для установки |  ![Picture20](/images/dm_virtualbox_storage_20.png) |
|  №21. Будем использовать весь объем жесткого диска |  ![Picture21](/images/dm_virtualbox_storage_21.png) |
|  №22. Выберем стандартное разбиение диска |  ![Picture22](/images/dm_virtualbox_storage_22.png)|
|  №23. Выберем пакеты для установки |  ![Picture23](/images/dm_virtualbox_storage_23.png) |
|  №24. Зададимм пароль суперпользователя root |  ![Picture24](/images/dm_virtualbox_storage_24.png) |
|  №25. Начнем процесс установки |  ![Picture25](/images/dm_virtualbox_storage_25.png) |
|  №26. Установка завершена |  ![Picture26](/images/dm_virtualbox_storage_26.png) |

# Первичная настройка Centos

Шаги:

* Создадим нового пользователя;
* Настроем sudo;
* Настроем сеть;
* Обновим пакеты в системе;


|  Шаги | Картина  |
|-------|----------|
|  №27. Заходим в систему под суперпользователем |  ![Picture27](/images/dm_virtualbox_storage_27.png) |
|  №28. Создаем нового пользователя, задаем пароль |  ![Picture28](/images/dm_virtualbox_storage_28.png)|
|  №29. Добавим пользователя в группу wheel, необходимо для sudo |  ![Picture29](/images/dm_virtualbox_storage_29.png) |
|  №30. Заходим под пользователем  |  ![Picture30](/images/dm_virtualbox_storage_30.png) |
|  №31. Проверяем sudo |  ![Picture31](/images/dm_virtualbox_storage_31.png) |
|  №32. Узнаем текущие настройки сети |  ![Picture32](/images/dm_virtualbox_storage_32.png)|
|  №33. Изменим настройки сети |  ![Picture33](/images/dm_virtualbox_storage_33.png) |
|  №34. Текущие настройки сети |  ![Picture34](/images/dm_virtualbox_storage_34.png) |
|  №35. Изменим настройки сети на статический адрес |  ![Picture35](/images/dm_virtualbox_storage_35.png) |
|  №36. Перегрузим сетевую службу, проверяем настройки сети |  ![Picture36](/images/dm_virtualbox_storage_36.png) |
|  №37. Проверим, что сеть работает |  ![Picture37](/images/dm_virtualbox_storage_37.png) |
|  №38. Обновим пакеты в системе |  ![Picture38](/images/dm_virtualbox_storage_38.png) |
|  №39. Процесс обновления пакетов |  ![Picture39](/images/dm_virtualbox_storage_39.png) |
|  №40. Процесс обновления пакетов, перезагружаемся |  ![Picture40](/images/dm_virtualbox_storage_40.png) |
|  №41. Процесс обновления завершен |  ![Picture41](/images/dm_virtualbox_storage_41.png) |
|  №42. Устанавливаю дополнительные пакеты |  ![Picture42](/images/dm_virtualbox_storage_42.png)|
|  №43. Пакеты установлены |  ![Picture43](/images/dm_virtualbox_storage_43.png) |

# Настройка Samba

Шаги:

* Установим необходимые пакеты;
* Разобъем жесткий диск;
* Отформатируем жесткий диск;
* Создадим новый сервис;
* Настроем samba;
* Попробуем подключиться с компьютера на сетевую папку;

|  Шаги | Картина  |
|-------|----------|
|  №44. Устанавливаем необходимые пакеты |  ![Picture44](/images/dm_virtualbox_storage_44.png) |
|  №45. Установка пакетов завершена |  ![Picture45](/images/dm_virtualbox_storage_45.png) |
|  №46. Начинаем разбивать жесткий диск |  ![Picture46](/images/dm_virtualbox_storage_46.png) |
|  №47. Создаем gpt, новый раздел |  ![Picture47](/images/dm_virtualbox_storage_47.png) |
|  №48. Форматируем новый раздел в xfs|  ![Picture48](/images/dm_virtualbox_storage_48.png) |
|  №49. Создадим сервис-mount для нового раздела |  ![Picture49](/images/dm_virtualbox_storage_49.png) |
|  №50. Содержимое нового сервиса |  ![Picture50](/images/dm_virtualbox_storage_50.png) |
|  №51. Включаем автозагрузку и старт нового сервиса |  ![Picture51](/images/dm_virtualbox_storage_51.png) |
|  №52. Настройки samba |  ![Picture52](/images/dm_virtualbox_storage_52.png)|
|  №53. Содержимое конфигурационного файла /etc/samba/smb.conf |  ![Picture53](/images/dm_virtualbox_storage_53.png) |
|  №54. Настроем фаервол |  ![Picture54](/images/dm_virtualbox_storage_54.png) |
|  №55. Включаем автозагрузку и старт сервисов smb,nmb |  ![Picture55](/images/dm_virtualbox_storage_55.png) |
|  №56. Попробуем зайти на сетевую папку |  ![Picture56](/images/dm_virtualbox_storage_56.png) |
|  №57. Сетевая папка открылась, все правильно |  ![Picture57](/images/dm_virtualbox_storage_57.png) |

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
|  №58. Форматируем новый раздел в xfs|  ![Picture58](/images/dm_virtualbox_storage_58.png) |
|  №59. Создадим сервис-mount для нового раздела |  ![Picture59](/images/dm_virtualbox_storage_59.png) |
|  №60. Содержимое нового сервиса |  ![Picture60](/images/dm_virtualbox_storage_60.png) |
|  №61. Включаем автозагрузку и старт нового сервиса |  ![Picture61](/images/dm_virtualbox_storage_61.png) |
|  №62. Настройки samba |  ![Picture62](/images/dm_virtualbox_storage_62.png)|
|  №63. Содержимое конфигурационного файла /etc/samba/smb.conf |  ![Picture63](/images/dm_virtualbox_storage_63.png) |
|  №64. Настроем фаервол |  ![Picture64](/images/dm_virtualbox_storage_64.png) |
|  №65. Включаем автозагрузку и старт сервисов smb,nmb |  ![Picture65](/images/dm_virtualbox_storage_65.png) |
|  №66. Попробуем зайти на сетевую папку |  ![Picture66](/images/dm_virtualbox_storage_66.png) |
|  №67. Сетевая папка открылась, все правильно |  ![Picture67](/images/dm_virtualbox_storage_67.png) |
|  №68. Форматируем новый раздел в xfs|  ![Picture68](/images/dm_virtualbox_storage_68.png) |
|  №69. Создадим сервис-mount для нового раздела |  ![Picture69](/images/dm_virtualbox_storage_69.png) |
|  №70. Содержимое нового сервиса |  ![Picture70](/images/dm_virtualbox_storage_70.png) |
|  №71. Включаем автозагрузку и старт нового сервиса |  ![Picture71](/images/dm_virtualbox_storage_71.png) |
|  №72. Настройки samba |  ![Picture72](/images/dm_virtualbox_storage_72.png)|
|  №73. Содержимое конфигурационного файла /etc/samba/smb.conf |  ![Picture73](/images/dm_virtualbox_storage_73.png) |
|  №74. Настроем фаервол |  ![Picture74](/images/dm_virtualbox_storage_74.png) |
|  №75. Включаем автозагрузку и старт сервисов smb,nmb |  ![Picture75](/images/dm_virtualbox_storage_75.png) |
|  №76. Попробуем зайти на сетевую папку |  ![Picture76](/images/dm_virtualbox_storage_76.png) |
|  №77. Сетевая папка открылась, все правильно |  ![Picture77](/images/dm_virtualbox_storage_77.png) |
|  №78. Форматируем новый раздел в xfs|  ![Picture78](/images/dm_virtualbox_storage_78.png) |
|  №79. Создадим сервис-mount для нового раздела |  ![Picture79](/images/dm_virtualbox_storage_79.png) |
|  №80. Содержимое нового сервиса |  ![Picture80](/images/dm_virtualbox_storage_80.png) |

**Задачи**:

* Сетевой ресурс (Samba);
* Сервер dns & dhcp (Dnsmasq);
* Сетевая загрузка (IPXE);
* Веб-сервер (Nginx);




[Previous](./prepare.markdown) | [Up](../intro.markdown) | [Next](./inventarization.markdown)
