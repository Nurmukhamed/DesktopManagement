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
|  №37. Добавим новые опции, next-server & filename |  ![Picture36](/images/dm_virtualbox_ipfire_36.png) |


[Previous](./Virtualbox.markdown) | [Up](../intro.markdown) | [Next](./Storage.markdown)
