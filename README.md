# LazyRolls-ADC-control
To open the window

EN   Added the ability to control the current consumed by the motor and stop it when the level is exceeded.<br>
RU   Добавлена возможность контроля потребляемого тока двигателем и остановка его по превышению уровня.

### Ссылка на авторский репозитарий
Основной репозитарий: [https://github.com/ACE1046/LazyRolls](https://github.com/ACE1046/LazyRolls)\
Описание проекта: [https://mysku.ru/blog/diy/62110.html](https://mysku.ru/blog/diy/62110.html)\
Файлы для печати: [https://www.thingiverse.com/thing:2857899](https://www.thingiverse.com/thing:2857899)\
Видео работы: [https://www.youtube.com/watch?v=lvBh_m7pOAI](https://www.youtube.com/watch?v=lvBh_m7pOAI)\
Дополнительные материалы пользователей LazyRolls: [https://samoswall.github.io/lazyrolls-additional-materials](https://samoswall.github.io/lazyrolls-additional-materials)


### Изменения внесенные в авторскую прошивку v0.15.3
* Добавлено управление двумя моторами DC.\
В Настройках задается "длина" на которой происходит переключение с одного мотора на другой. Например:
Длина шторы 10000, Переключение 6000. От 0 до 6000 работает мотор А, от 6000 до 10000 работает мотор В. 
* Добавлен контроль DC двигателя по потребляемому току.\
Пороговый уровень (в отсчетах ADC) задается в настройках. При превышении порога происходит остановка двигателя с записью в Log уровня превышения.\
При превышениях в крайних положениях длины шторы (+-300) срабатывает концевик верхний или нижний соответственно.


Тестовая схема:

![all](https://github.com/samoswall/LazyRolls-ADC-control/blob/main/ShemaADC.png)

В платах NodeMCU и Wemos на ADC стоит делитель напряжения (расчитан на входное напряжение 3.3в), поэтому показания АЦП будут занижены почти в 3 раза.\
При использавании ESP-12 или ESP-07 (вход АЦП до 1в) показания будут более адекватны.\
Для желающих доработать - сделал комменты внесенных изменений.

Плата и корпус в стадии разработки :)\
![all](https://github.com/samoswall/LazyRolls-ADC-control/blob/main/3dmodel.png)
