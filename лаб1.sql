USE mgpu_ico_db_15;
-- Создание таблицы отделов
CREATE TABLE `departments` (
  `department_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Создание таблицы сотрудников
CREATE TABLE `employees` (
  `employee_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(255) NOT NULL,
  `last_name` VARCHAR(255) NOT NULL,
  `position` VARCHAR(255) NOT NULL COMMENT 'Должность сотрудника',
  `hire_date` DATE NOT NULL COMMENT 'Дата приема на работу',
  `department_id` INT,
  PRIMARY KEY (`employee_id`),
  CONSTRAINT `fk_employees_departments`
    FOREIGN KEY (`department_id`)
    REFERENCES `departments` (`department_id`)
    ON UPDATE CASCADE
    ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO `departments` (`department_id`, `name`) VALUES (1, 'Отдел разработки');
INSERT INTO `departments` (`department_id`, `name`) VALUES (2, 'Отдел тестирования');
INSERT INTO `departments` (`department_id`, `name`) VALUES (3, 'HR');
INSERT INTO `departments` (`department_id`, `name`) VALUES (4, 'Аналитика');
INSERT INTO `departments` (`department_id`, `name`) VALUES (5, 'Администрирование');

INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Алексей', 'Павлов', 'Разработчик', '2022-05-12', 1);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Николай', 'Тихонов', 'Разработчик', '2025-02-24', 1);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Ирина', 'Фёдоров', 'Разработчик', '2017-06-09', 4);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Людмила', 'Волков', 'Разработчик', '2018-12-21', 5);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Валерия', 'Воробьёв', 'Разработчик', '2018-05-17', 5);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Владимир', 'Орлов', 'Тимлид', '2020-06-22', 3);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Вера', 'Куликов', 'Системный администратор', '2021-01-23', 1);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Виктор', 'Егоров', 'Менеджер проекта', '2016-09-19', 3);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Пётр', 'Гусев', 'Разработчик', '2022-03-18', 2);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Алёна', 'Егоров', 'Тестировщик', '2016-01-30', 1);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Алексей', 'Егоров', 'Системный администратор', '2016-10-03', 1);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Елена', 'Смирнов', 'HR-специалист', '2021-10-06', 2);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Константин', 'Тихонов', 'Разработчик', '2018-05-27', 5);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Роман', 'Антонов', 'Разработчик', '2022-06-18', 4);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Виктор', 'Фролов', 'Разработчик', '2025-01-20', 4);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Владимир', 'Васильев', 'Разработчик', '2017-02-01', 4);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Мария', 'Воробьёв', 'Аналитик', '2020-08-10', 4);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Алексей', 'Васильев', 'Менеджер проекта', '2016-09-05', 4);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Елена', 'Васильев', 'Разработчик', '2018-10-15', 2);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Владимир', 'Давыдов', 'Разработчик', '2021-01-11', 2);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Дарья', 'Алексеев', 'Тимлид', '2019-02-14', 4);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Виктор', 'Смирнов', 'Аналитик', '2020-12-20', 5);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Андрей', 'Кузнецов', 'DevOps', '2023-04-25', 5);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Иван', 'Попов', 'Тимлид', '2024-06-13', 2);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Артём', 'Романов', 'Менеджер проекта', '2021-06-12', 4);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Георгий', 'Григорьев', 'Разработчик', '2016-08-28', 2);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Татьяна', 'Иванов', 'Тестировщик', '2020-05-18', 3);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Полина', 'Николаев', 'Тестировщик', '2020-09-28', 5);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Алиса', 'Морозов', 'HR-специалист', '2018-02-16', 3);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Георгий', 'Кузнецов', 'HR-специалист', '2022-06-30', 5);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Алексей', 'Макаров', 'Разработчик', '2016-08-22', 1);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Алёна', 'Фролов', 'Разработчик', '2021-08-21', 5);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Артём', 'Кузнецов', 'Тимлид', '2021-09-11', 1);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Кирилл', 'Смирнов', 'Разработчик', '2022-09-03', 1);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Виктор', 'Григорьев', 'Системный администратор', '2017-05-06', 5);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Виктор', 'Гусев', 'Архитектор', '2022-09-01', 1);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Анастасия', 'Попов', 'Тестировщик', '2020-09-13', 5);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Галина', 'Куликов', 'Аналитик', '2019-07-19', 3);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Георгий', 'Макаров', 'Разработчик', '2018-09-04', 3);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Наталья', 'Фёдоров', 'Системный администратор', '2023-07-14', 3);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Полина', 'Макаров', 'Тестировщик', '2024-06-06', 1);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Иван', 'Михайлов', 'Менеджер проекта', '2022-12-19', 5);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Андрей', 'Смирнов', 'Разработчик', '2022-01-11', 2);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Ксения', 'Козлов', 'Тестировщик', '2017-06-26', 3);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Дмитрий', 'Павлов', 'HR-специалист', '2020-02-22', 3);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Артём', 'Сергеев', 'DevOps', '2025-05-08', 5);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Илья', 'Жуков', 'Разработчик', '2025-01-18', 5);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Иван', 'Медведев', 'Разработчик', '2019-05-11', 1);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Роман', 'Козлов', 'Архитектор', '2017-04-17', 1);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Людмила', 'Морозов', 'Разработчик', '2019-01-20', 3);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Валерия', 'Семенов', 'Архитектор', '2024-01-18', 3);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Георгий', 'Козлов', 'Разработчик', '2021-09-01', 4);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Олег', 'Кузнецов', 'Разработчик', '2017-01-13', 4);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Константин', 'Сидоров', 'Разработчик', '2016-01-15', 3);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Роман', 'Козлов', 'HR-специалист', '2017-10-23', 4);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Людмила', 'Воробьёв', 'Тимлид', '2022-04-16', 1);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Егор', 'Смирнов', 'Разработчик', '2023-10-01', 2);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Ирина', 'Сидоров', 'Системный администратор', '2025-05-11', 3);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Алёна', 'Медведев', 'Разработчик', '2017-08-29', 4);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Роман', 'Сидоров', 'Тестировщик', '2019-06-16', 3);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Сергей', 'Соловьёв', 'Разработчик', '2018-05-10', 2);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Андрей', 'Соловьёв', 'Архитектор', '2024-09-30', 5);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Юлия', 'Жуков', 'Разработчик', '2024-05-27', 2);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Виктор', 'Волков', 'Разработчик', '2024-12-20', 2);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Юлия', 'Петров', 'Разработчик', '2018-01-04', 3);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Юлия', 'Павлов', 'Разработчик', '2018-12-28', 2);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Андрей', 'Яковлев', 'Архитектор', '2016-06-07', 4);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Евгений', 'Лебедев', 'Тестировщик', '2025-02-26', 4);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Мария', 'Орлов', 'Аналитик', '2025-03-14', 2);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Евгений', 'Петров', 'Тестировщик', '2023-05-27', 2);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Наталья', 'Зайцев', 'Тимлид', '2019-02-15', 1);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Константин', 'Соловьёв', 'Разработчик', '2023-03-12', 5);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Наталья', 'Давыдов', 'Разработчик', '2019-09-18', 1);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Егор', 'Козлов', 'Менеджер проекта', '2018-01-01', 5);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Олег', 'Сидоров', 'HR-специалист', '2017-03-20', 5);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Дарья', 'Соловьёв', 'Системный администратор', '2024-03-03', 3);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Дарья', 'Киселёв', 'Разработчик', '2021-09-25', 1);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Татьяна', 'Антонов', 'Разработчик', '2018-02-17', 3);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Сергей', 'Воробьёв', 'Разработчик', '2016-01-07', 5);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Ирина', 'Лебедев', 'HR-специалист', '2020-01-31', 4);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Дмитрий', 'Зайцев', 'Разработчик', '2022-12-27', 3);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Егор', 'Орлов', 'Тестировщик', '2021-09-08', 3);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Юлия', 'Макаров', 'Системный администратор', '2020-07-06', 3);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Людмила', 'Фёдоров', 'DevOps', '2018-02-24', 4);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Татьяна', 'Алексеев', 'Разработчик', '2022-11-26', 5);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Илья', 'Григорьев', 'HR-специалист', '2022-02-22', 1);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Илья', 'Николаев', 'Разработчик', '2018-05-10', 4);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Алёна', 'Киселёв', 'Разработчик', '2023-05-05', 3);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Полина', 'Сергеев', 'HR-специалист', '2020-12-16', 2);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Ксения', 'Фролов', 'Разработчик', '2024-11-25', 2);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Николай', 'Николаев', 'Архитектор', '2021-10-12', 5);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Елена', 'Попов', 'Разработчик', '2025-03-06', 2);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Илья', 'Егоров', 'Разработчик', '2025-01-16', 2);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Максим', 'Петров', 'Тестировщик', '2016-07-08', 2);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('София', 'Жуков', 'Тестировщик', '2025-07-12', 1);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Полина', 'Романов', 'HR-специалист', '2023-01-23', 5);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Владимир', 'Яковлев', 'Разработчик', '2021-07-17', 4);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Виктор', 'Морозов', 'Тимлид', '2023-05-11', 1);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Андрей', 'Воробьёв', 'Разработчик', '2018-06-15', 2);
INSERT INTO `employees` (`first_name`, `last_name`, `position`, `hire_date`, `department_id`) VALUES ('Екатерина', 'Михайлов', 'Менеджер проекта', '2016-07-24', 5);

SELECT *
FROM employees
WHERE position = 'Разработчик';
