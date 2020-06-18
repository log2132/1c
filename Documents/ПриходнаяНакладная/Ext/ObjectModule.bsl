﻿
Процедура ОбработкаПроведения(Отказ, Режим)
	//{{__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
	// Данный фрагмент построен конструктором.
	// При повторном использовании конструктора, внесенные вручную изменения будут утеряны!!!

	// регистр Управленчиский Кредит
	Движения.Управленчиский.Записывать = Истина;
	Для Каждого ТекСтрокаМатериалы Из Материалы Цикл
		Движение = Движения.Управленчиский.Добавить();
		Движение.ВидДвижения = ВидДвиженияБухгалтерии.Кредит;
		Движение.Счет = ПланыСчетов.Основной.Товары;
		Движение.Период = Дата;
		Движение.Сумма = ТекСтрокаМатериалы.Сумма;
		Движение.Количество = ТекСтрокаМатериалы.Количество;
		Движение.Субконто[ПланыВидовХарактеристик.ВидыСубконто.Материалы] = ТекСтрокаМатериалы.Материал;
	КонецЦикла;

	//}}__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
КонецПроцедуры
