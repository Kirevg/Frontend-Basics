# Cursor Remote Development Setup

## 🔧 Настройка удаленной разработки

### 1. Remote SSH Extension

#### Установка расширения:
1. Откройте Cursor
2. Перейдите в Extensions (Ctrl+Shift+X)
3. Найдите "Remote - SSH"
4. Установите расширение

#### Настройка SSH:
1. Нажмите F1 → "Remote-SSH: Connect to Host"
2. Добавьте конфигурацию SSH:

```ssh-config
# ~/.ssh/config
Host home-computer
    HostName YOUR_HOME_IP
    User YOUR_USERNAME
    Port 22
    IdentityFile ~/.ssh/id_rsa
```

### 2. GitHub Codespaces

#### Создание Codespace:
1. Перейдите на https://github.com/Kirevg/Frontend-Basics
2. Нажмите зеленую кнопку "Code"
3. Выберите "Codespaces" → "Create codespace"
4. Откройте в браузере или Cursor

### 3. Синхронизация настроек Cursor

#### Включение Settings Sync:
1. Cursor → Settings (Ctrl+,)
2. Найдите "Settings Sync"
3. Включите синхронизацию
4. Войдите в аккаунт GitHub

#### Что синхронизируется:
- Настройки редактора
- Расширения
- Клавиатурные сокращения
- Snippets
- Workspace настройки

### 4. Рабочий процесс

#### Ежедневная работа:
```bash
# На удаленном компьютере
git pull                    # Получить изменения
# Работа в Cursor
git add .
git commit -m "Changes"
git push                    # Отправить изменения
```

#### Переключение между компьютерами:
1. **Дома:** Работаете в Cursor локально
2. **На работе:** Подключаетесь через Remote SSH
3. **Настройки:** Автоматически синхронизируются

### 5. Docker в удаленной разработке

#### На удаленном сервере:
```bash
# Установка Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# Запуск проекта
git clone https://github.com/Kirevg/Frontend-Basics.git
cd Frontend-Basics
docker-compose up -d
```

#### Подключение к удаленной базе:
- **Host:** IP_УДАЛЕННОГО_СЕРВЕРА:5432
- **Database:** frontend_basics
- **User:** postgres
- **Password:** password123

## 🎯 Рекомендуемый workflow:

1. **Основная работа:** Локальный Cursor + Git
2. **Удаленный доступ:** Remote SSH для быстрого доступа
3. **Облачная разработка:** Codespaces для экспериментов
4. **Синхронизация:** Settings Sync для настроек

## 📱 Мобильный доступ:

- **GitHub Mobile:** Просмотр кода
- **GitHub Codespaces:** Полная среда разработки
- **Terminal в браузере:** Базовые операции
