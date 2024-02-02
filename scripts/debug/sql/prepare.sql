create database "type-6-database";
create table type7metadata (
    user_id integer not null generated BY DEFAULT AS IDENTITY,
    metadata jsonb,
    primary key (user_id)
);

INSERT INTO type7metadata(metadata)
VALUES ('{
  "version": "v3",
  "metadataEntrySets": [
    {
      "name": "Пол",
      "message": "Кто вы?",
      "minimumChoices": 1,
      "maximumChoices": 1,
      "entries": [
        {
          "name": "Парень",
          "message": "Парень",
          "flag": true
        },
        {
          "name": "Девушка",
          "message": "Девушка",
          "flag": false
        }
      ]
    },
    {
      "name": "Цель",
      "message": "Кого ищем?",
      "minimumChoices": 1,
      "maximumChoices": 1,
      "entries": [
        {
          "name": "Парень",
          "message": "Парней",
          "flag": false
        },
        {
          "name": "Девушка",
          "message": "Девушек",
          "flag": true
        }
      ]
    },
    {
      "name": "Сообщества",
      "message": "За какими сообществами вы следите?",
      "minimumChoices": 0,
      "maximumChoices": 2147483647,
      "entries": [
        {
          "name": "МФТИ - Физтех",
          "message": "МФТИ - Физтез",
          "flag": false
        },
        {
          "name": "Профком",
          "message": "Профком",
          "flag": false
        },
        {
          "name": "МКИ",
          "message": "МКИ",
          "flag": false
        },
        {
          "name": "Подслушано на физтехе",
          "message": "Подслушано на физтехе",
          "flag": false
        },
        {
          "name": "Физтех-союз",
          "message": "Физтех-союз",
          "flag": false
        },
        {
          "name": "Физтех-сегодня",
          "message": "Физтех-союз",
          "flag": false
        },
        {
          "name": "Вело-физтех",
          "message": "Вело-физтех",
          "flag": false
        },
        {
          "name": "КИМ",
          "message": "КИМ",
          "flag": false
        },
        {
          "name": "КИМ",
          "message": "Студенческий спортивный клуб",
          "flag": false
        },
        {
          "name": "Студенческий спортивный клуб",
          "message": "Горная секиция",
          "flag": false
        },
        {
          "name": "Горная секция",
          "message": "КИМ",
          "flag": false
        },
        {
          "name": "КИМ",
          "message": "Физтех-союз",
          "flag": false
        },
        {
          "name": "Физтех-союз",
          "message": "Кейс-клуб",
          "flag": false
        },
        {
          "name": "Кейс-клуб",
          "message": "Физкек",
          "flag": false
        },
        {
          "name": "Физкек",
          "message": "Физкек",
          "flag": false
        },
        {
          "name": "Физтех-тур",
          "message": "Физтех-тур",
          "flag": false
        },
        {
          "name": "Физтех.confessions",
          "message": "Физтех.confessions",
          "flag": false
        },
        {
          "name": "Бег",
          "message": "Бег",
          "flag": false
        }
      ]
    },
    {
      "name": "Увлечения",
      "message": "Какие у вас увлечения?",
      "minimumChoices": 0,
      "maximumChoices": 2147483647,
      "entries": [
        {
          "name": "Бег",
          "message": "Бег",
          "flag": false
        },
        {
          "name": "Легкая атлетика",
          "message": "Легкая атлетика",
          "flag": false
        },
        {
          "name": "Гимнастика",
          "message": "Гимнастика",
          "flag": false
        },
        {
          "name": "Футбол",
          "message": "Футбол",
          "flag": false
        },
        {
          "name": "Волейбол",
          "message": "Волейбол",
          "flag": false
        },
        {
          "name": "баскетбол",
          "message": "Баскетбол",
          "flag": false
        },
        {
          "name": "Теннис (большой)",
          "message": "Тенник (большой)",
          "flag": false
        },
        {
          "name": "Теннис (настольный)",
          "message": "Теннис (настольный)",
          "flag": false
        },
        {
          "name": "Бадминтон",
          "message": "Бадминтон",
          "flag": false
        },
        {
          "name": "Плавание",
          "message": "Плавание",
          "flag": false
        },
        {
          "name": "Тренировочный зал",
          "message": "Тренировочный зал",
          "flag": false
        },
        {
          "name": "Бокс",
          "message": "Бокс",
          "flag": false
        },
        {
          "name": "Борьба",
          "message": "Борьба",
          "flag": false
        },
        {
          "name": "Дзюдо",
          "message": "Дзюдо",
          "flag": false
        },
        {
          "name": "Самбо",
          "message": "Самбо",
          "flag": false
        },
        {
          "name": "Кикбоксинг",
          "message": "Кикбоксинг",
          "flag": false
        },
        {
          "name": "Горные лыжи",
          "message": "Горные лыжи",
          "flag": false
        },
        {
          "name": "Сноуборд",
          "message": "Сноуборд",
          "flag": false
        },
        {
          "name": "Яхтенный спорт",
          "message": "Яхенный спорт",
          "flag": false
        },
        {
          "name": "Виндсерфинг",
          "message": "Винлсерфинг",
          "flag": false
        },
        {
          "name": "Серфинг",
          "message": "Серфинг",
          "flag": false
        },
        {
          "name": "Велосипед",
          "message": "Велосипед",
          "flag": false
        },
        {
          "name": "Ролики",
          "message": "Ролики",
          "flag": false
        },
        {
          "name": "Скейтборд",
          "message": "Скейтборд",
          "flag": false
        },
        {
          "name": "Поп-музыка",
          "message": "Поп-музыка",
          "flag": false
        },
        {
          "name": "Рок-музыка",
          "message": "Рок-музыка",
          "flag": false
        },
        {
          "name": "Хип-хоп/Рэп",
          "message": "Хип-хоп/Рэп",
          "flag": false
        },
        {
          "name": "Электронная музыка",
          "message": "Электронная музыка",
          "flag": false
        },
        {
          "name": "Джаз/Блюз",
          "message": "Джаз/Блюз",
          "flag": false
        },
        {
          "name": "Классическая музыка",
          "message": "Классическая музыка",
          "flag": false
        },
        {
          "name": "Кантри/Фолк",
          "message": "Кантри/Фолк",
          "flag": false
        },
        {
          "name": "Металл",
          "message": "Металл",
          "flag": false
        },
        {
          "name": "К-поп/Дж-поп",
          "message": "К-поп/Дж-поп",
          "flag": false
        },
        {
          "name": "Техно/Транс",
          "message": "Техно/Транс",
          "flag": false
        },
        {
          "name": "Панк-рок",
          "message": "Панк-рок",
          "flag": false
        },
        {
          "name": "Инди-поп",
          "message": "Инди-поп",
          "flag": false
        },
        {
          "name": "Живопись и рисование",
          "message": "Живопись и рисование",
          "flag": false
        },
        {
          "name": "Театральное искусство",
          "message": "Театральное искусство",
          "flag": false
        },
        {
          "name": "Фотография и видеоискусство",
          "message": "Фотография и видеоискусство",
          "flag": false
        },
        {
          "name": "Литературное творчество",
          "message": "Литературное творчество",
          "flag": false
        },
        {
          "name": "Дизайн",
          "message": "Дизайн",
          "flag": false
        },
        {
          "name": "Изобразительное искусство",
          "message": "Изобразительное искусство",
          "flag": false
        },
        {
          "name": "Музыкальное исполнительство",
          "message": "Музыкальное исполнительство",
          "flag": false
        },
        {
          "name": "Вязание",
          "message": "Вязание",
          "flag": false
        },
        {
          "name": "Шитье и вышивка",
          "message": "Шитье и вышивка",
          "flag": false
        },
        {
          "name": "Изготовление украшений",
          "message": "Изготовление украшений",
          "flag": false
        },
        {
          "name": "Макраме",
          "message": "Макраме",
          "flag": false
        },
        {
          "name": "Классическая проза",
          "message": "Классическая проза",
          "flag": false
        },
        {
          "name": "Современная проза",
          "message": "Современная проза",
          "flag": false
        },
        {
          "name": "Классическая поэзия",
          "message": "Классическая поэзия",
          "flag": false
        },
        {
          "name": "Современная поэзия",
          "message": "Современная поэзия",
          "flag": false
        },
        {
          "name": "Приключенческий роман",
          "message": "Приключенческий роман",
          "flag": false
        },
        {
          "name": "Исторический роман",
          "message": "Исторический роман",
          "flag": false
        },
        {
          "name": "Научная фантастика",
          "message": "Научная фантастика",
          "flag": false
        },
        {
          "name": "Фэнтези",
          "message": "Фэнтези",
          "flag": false
        },
        {
          "name": "Детектив",
          "message": "Детектив",
          "flag": false
        }
      ]
    },
    {
      "name": "Навыки",
      "message": "Какими профессиональными навыками вы владеете?",
      "minimumChoices": 0,
      "maximumChoices": 2147483647,
      "entries": [
        {
          "name": "Программирование (frontend)",
          "message": "Программирование (frontend)",
          "flag": false
        },
        {
          "name": "Программирование (backend)",
          "message": "Программирование (backend)",
          "flag": false
        },
        {
          "name": "Аналитика (business)",
          "message": "Аналитика (business)",
          "flag": false
        },
        {
          "name": "Аналитика (system)",
          "message": "Аналитика (system)",
          "flag": false
        },
        {
          "name": "Аналитика (product)",
          "message": "Аналитика (product)",
          "flag": false
        },
        {
          "name": "Аналитика (project)",
          "message": "Аналитика (project)",
          "flag": false
        },
        {
          "name": "Преподавание (школа)",
          "message": "Преподавание (школа)",
          "flag": false
        },
        {
          "name": "Преподавание (вуз)",
          "message": "Преподавание (вуз)",
          "flag": false
        },
        {
          "name": "Репетиторство",
          "message": "Репетиторство",
          "flag": false
        },
        {
          "name": "Инженерия",
          "message": "Инженерия",
          "flag": false
        },
        {
          "name": "Дизайн (цифровой)",
          "message": "Дизайн (цифровой)",
          "flag": false
        },
        {
          "name": "Дизайн (аналог)",
          "message": "Дизайн (аналог)",
          "flag": false
        },
        {
          "name": "Менеджер (seles)",
          "message": "Менеджер (sales)",
          "flag": false
        },
        {
          "name": "Менеджер (product)",
          "message": "Менеджер (product)",
          "flag": false
        },
        {
          "name": "Менеджер (hr)",
          "message": "Менеджер (hr)",
          "flag": false
        },
        {
          "name": "Менеджер (smm)",
          "message": "Менеджер (smm)",
          "flag": false
        },
        {
          "name": "Менеджер (finance)",
          "message": "Менеджер (finance)",
          "flag": false
        },
        {
          "name": "Наука (лаба)",
          "message": "Наука (лаба)",
          "flag": false
        },
        {
          "name": "Предпринимательство",
          "message": "Предпринимательство",
          "flag": false
        },
        {
          "name": "Бизнес",
          "message": "Бизнес",
          "flag": false
        },
        {
          "name": "Проектная деятельность",
          "message": "Проектная деятельность",
          "flag": false
        }
      ]
    },
    {
      "name": "Личные качества",
      "message": "Какими качествами вы обладаете?",
      "minimumChoices": 0,
      "maximumChoices": 2147483647,
      "entries": [
        {
          "name": "Поддержка",
          "message": "Поддержка",
          "flag": false
        },
        {
          "name": "Чувство юмора",
          "message": "Чувство юмора",
          "flag": false
        },
        {
          "name": "Эмоциольная стабильность",
          "message": "Эмоциональная стабильность",
          "flag": false
        },
        {
          "name": "Доброта",
          "message": "Доброта",
          "flag": false
        },
        {
          "name": "Амбициозность",
          "message": "Амбициозность",
          "flag": false
        },
        {
          "name": "Заботливость",
          "message": "Заботливость",
          "flag": false
        },
        {
          "name": "Саморазвитие",
          "message": "Саморазвитие",
          "flag": false
        },
        {
          "name": "Энергичный",
          "message": "Энергичный",
          "flag": false
        }
      ]
    },
    {
      "name": "Цели (среднесрочные)",
      "message": "Какие ваши цели в жизни на ближайшие 5 лет?",
      "minimumChoices": 0,
      "maximumChoices": 2147483647,
      "entries": [
        {
          "name": "Качественное образование",
          "message": "Качественное образование",
          "flag": false
        },
        {
          "name": "Высокие оценки",
          "message": "Высокие оценки",
          "flag": false
        },
        {
          "name": "Учеба за границей",
          "message": "Учеба за границей",
          "flag": false
        },
        {
          "name": "Стабильная работа",
          "message": "Стабльная работа",
          "flag": false
        },
        {
          "name": "Реализация проекта",
          "message": "Реализация проекта",
          "flag": false
        },
        {
          "name": "Построение соц. связей",
          "message": "Построение соц. связей",
          "flag": false
        },
        {
          "name": "Улучшение физ. формы",
          "message": "Улучшение физ. формы",
          "flag": false
        },
        {
          "name": "Улучшение здоровья",
          "message": "Улучшение здоровья",
          "flag": false
        },
        {
          "name": "Достижения в хобби",
          "message": "Достижения в хобби",
          "flag": false
        }
      ]
    },
    {
      "name": "Цели (долгосрочные)",
      "message": "Какие ваши цели в жизни?",
      "minimumChoices": 0,
      "maximumChoices": 2147483647,
      "entries": [
        {
          "name": "Финансовая стабильность",
          "message": "Финансовая стабильность",
          "flag": false
        },
        {
          "name": "Финансовый переизбыток",
          "message": "Финаносвый преизбыток",
          "flag": false
        },
        {
          "name": "Эмоциональная стабильность",
          "message": "Эмоциональная стабильность",
          "flag": false
        },
        {
          "name": "Создание семьи",
          "message": "Создание семьи",
          "flag": false
        },
        {
          "name": "Путешествия",
          "message": "Путешествия",
          "flag": false
        },
        {
          "name": "Помощь людям",
          "message": "Помощь людям",
          "flag": false
        },
        {
          "name": "Бизнес",
          "message": "Бизнес",
          "flag": false
        },
        {
          "name": "Духовное спокойствие",
          "message": "Духовное спокойствие",
          "flag": false
        }
      ]
    }
  ],
  "selectedUsers": [],
  "parsedByJob": false
}');