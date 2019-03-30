# Установка Centos

Установка CentOS будет проведена в ручном режиме, для установки использовался последний доступный релиз. Установка через kickstart-файл будет доступна позднее.

|  Шаги | Картина  |
|-------|----------|
|  №1. Загрузите установчный образ со официальной страницы |  ![Picture1](/images/dm_virtualbox_storage_01.png) |
|  №2. Запуск виртуальной машины |  ![Picture2](/images/dm_virtualbox_storage_02.png)|
|  №3. Нажмите TAB, чтобы изменить строку загрузки, выберем установку в текстовом режиме |  ![Picture3](/images/dm_virtualbox_storage_03.png) |
|  №4. Основное окно установки |  ![Picture4](/images/dm_virtualbox_storage_04.png) |
|  №5. Настроем временную зону |  ![Picture5](/images/dm_virtualbox_storage_05.png) |
|  №6. Выбор континента |  ![Picture6](/images/dm_virtualbox_storage_06.png) |
|  №7. Выбор города |  ![Picture7](/images/dm_virtualbox_storage_07.png) |
|  №8. Выбор города |  ![Picture8](/images/dm_virtualbox_storage_08.png) |
|  №9. Настроем сетевой интерфейс |  ![Picture9](/images/dm_virtualbox_storage_09.png) |
|  №10. Настроем сетевой интерфейс |  ![Picture10](/images/dm_virtualbox_storage_10.png) |
|  №11. Интерфейс настроен как DHCP-клиент, сеть будет запущена после перегрузки, применим сетевые настройки в установщике |  ![Picture11](/images/dm_virtualbox_storage_11.png) |
|  №12. Завершаем настройку сети |  ![Picture12](/images/dm_virtualbox_storage_12.png)|
|  №13. Выберем источник для установки |  ![Picture13](/images/dm_virtualbox_storage_13.png) |
|  №14. Выберем сетевую установку |  ![Picture14](/images/dm_virtualbox_storage_14.png) |
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
|  Нажимаем Enter и ***переходим ко второй части настройки*** |

# Первичная настройка Centos

Что будет сделано:

* Будет создан новый пользователь;
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
|  №40. Окончание процесса обновления пакетов |  ![Picture40](/images/dm_virtualbox_storage_40.png) |
|  ***Перезагружаемся*** |
|  №41. Процесс обновления завершен |  ![Picture41](/images/dm_virtualbox_storage_41.png) |
|  №42. Устанавливаю дополнительные пакеты |  ![Picture42](/images/dm_virtualbox_storage_42.png)|
|  №43. Пакеты установлены |  ![Picture43](/images/dm_virtualbox_storage_43.png) |

# Настройка Samba

Что будет сделано:

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
|  №51. Включаем автозагрузку и запускаем новый маунт |  ![Picture51](/images/dm_virtualbox_storage_51.png) |
|  №52. Настройки samba |  ![Picture52](/images/dm_virtualbox_storage_52.png)|
|  №53. Содержимое конфигурационного файла /etc/samba/smb.conf |  ![Picture53](/images/dm_virtualbox_storage_53.png) |
|  №54. Настроем фаервол |  ![Picture54](/images/dm_virtualbox_storage_54.png) |
|  №55. Включаем автозагрузку и запуск сервисов smb,nmb |  ![Picture55](/images/dm_virtualbox_storage_55.png) |
|  №56. Попробуем зайти на сетевую папку |  ![Picture56](/images/dm_virtualbox_storage_56.png) |
|  №57. Сетевая папка открылась, все правильно |  ![Picture57](/images/dm_virtualbox_storage_57.png) |


[Previous](./IPFire.markdown) | [Up](../prepare.markdown) | [Next](./netboot.markdown)
