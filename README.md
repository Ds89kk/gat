<img src='qso-soft.png'/>

# Usage overview | QSO-soft
## Steps to set up script:

1. Установить [VisualStudio Code](https://code.visualstudio.com/) или Sublime Text или любую другую IDE

2. Установка node, npm, git
: 2.1. Устанавливаем Node +, если версия ниже 20й - https://nodejs.org/en/download, либо - https://github.com/coreybutler/nvm-windows
: 2.2. Устанавливаем Git, если еще не установлен - https://gitforwindows.org/ (всё по умолчанию выбирайте)
: 2.3. Устанавливаем его глобально
```bash
npm install npm -g
npm install typescript -g
```

3. После установки Git у вас должен появиться bash в выборе терминалов в VS Code (на стрелочку нажмите снизу в терминале и там будет Git Bash). Используем обязательно его или zsh! Главное, не powershell!

4. Проверяем версию Node, NPM и NVM.
```bash
node -v && git -v && npm -v
# v20.8.0 (не обязательно прям цифра в цифру, главное чтобы была версия v20)
# git version 2.42.0 (все равно на версию)
# 9.8.1 (все равно на версию)
```

5. Переходим на рабочий стол
```bash
cd ./<путь на рабочий стол>
```

6. Клонируем репозиторий и выполняем логин в GitHub, так как это приватный репозиторий
```bash
git clone https://github.com/QSO-soft/QSO-general.git
```

7. Переходим в папку с проектом
```bash
cd QSO-general
```

8. Устанавливаем нужные зависимости
```bash
npm i
```

9.  Подготавливаем файлы к работе
```bash
npm run prepare-files
```

10. Заполняем файлы настроек
: 10.1. `src/_inputs/settings/global.js`
: 10.2. `src/_inputs/settings/settings.ts`
: 10.3. `src/_inputs/settings/routes/base.ts`

11. Заполняем файлы кошельков и проксей
: Вариант 1:
: 1.1. `src/_inputs/csv/wallets.csv` (НЕ УДАЛЯЙТЕ HEADER CSV ФАЙЛА! Это не .txt!)
: 1.2. `src/_inputs/csv/proxies.csv` (OPTIONAL)

: ИЛИ (при использовании **useGoogleSheets** в settings)
: 1.1. Создаем Service Account в [Google Console](https://console.cloud.google.com/apis/credentials)
: 1.2. Скачиваем креды в json формате
: 1.3. Переносим креды в `src/_inputs/json/google-credentials.json`
: 1.4. Создаем и заполняем новую таблицу и приглашаем как редактора туда сервис аккаунт
: 1.5. Заполняем настройки **GOOGLE_SHEETS** в `src/_inputs/settings/global.js`

12. npm start

---

## Scripts

- [Main](src/scripts/main/README.md)
