# language: ru
Функционал: Я, как учитель добавляю литературу,
            я, как админ удаляю,
            я, как учитель не вижу свою добавленную литературу

  Сценарий: загрузка учителем книги,
            удаление ее админом,
            проверка учителем что книги нет
    Допустим я как учитель1 логинюсь, добавляю книгу
    Если я залогинен как админ и удаляю книгу добавленная от препода №1
    То я как учитель1 больше не вижу мою удаленную книгу админом
    