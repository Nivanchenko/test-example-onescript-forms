Перем Ф;

Процедура НажатиеФормы(Доппараметр = 0) Экспорт
	Сообщить("Результат = " + (Доппараметр / 1000));
	Сообщить("Ф.АргументыСобытия.Параметр = " + Ф.АргументыСобытия.Параметр);
КонецПроцедуры

ПодключитьВнешнююКомпоненту("./t_forms/Модули/experiment.dll");

Ф = Новый ФормыДляОдноСкрипта();
Форма1 = Ф.Форма();
Форма1.Отображать = Истина;
Форма1.Показать();
Форма1.Активизировать();
Форма1.Нажатие = Новый Действие(ЭтотОбъект, "НажатиеФормы");

Пока Ф.Продолжать Цикл
        Событие = Ф.ПолучитьСобытие();
        Попытка
                Событие.Выполнить(ТекущаяУниверсальнаяДатаВМиллисекундах());
        Исключение
                Выполнить(Событие);
        КонецПопытки;
КонецЦикла;