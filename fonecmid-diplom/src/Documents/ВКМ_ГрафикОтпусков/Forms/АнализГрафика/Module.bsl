#Область ОбработчикиСобытийФормы

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)

	Адрес = Параметры.АдресВХранилище;
	
	ОтпускаСотрудников = ПолучитьИзВременногоХранилища(Адрес);
	
	Для Каждого Строка Из ОтпускаСотрудников Цикл  
		
		Точка = ДиаграммаГанта.УстановитьТочку(Строка.Сотрудник);
		Серия = ДиаграммаГанта.УстановитьСерию("Отпуск");
		
		Значение = ДиаграммаГанта.ПолучитьЗначение(Точка, Серия);
		Интервал = Значение.Добавить();
		Интервал.Начало = Строка.ДатаНачала;
		Интервал.Конец = Строка.ДатаОкончания;	
		
		СтрокаТаб = Объект.ОтпускаСотрудников.Добавить();
		СтрокаТаб.Сотрудник = Строка.Сотрудник;
		СтрокаТаб.ДатаНачала = Строка.ДатаНачала;
		СтрокаТаб.ДатаОкончания = Строка.ДатаОкончания;
	КонецЦикла; 
КонецПроцедуры

#КонецОбласти


