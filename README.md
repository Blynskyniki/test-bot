# Test telegram app

Для работы нужен API bot token и зашитая ссылка в кнопку бота

Хороший [гайд](https://habr.com/ru/articles/666278/) по которому это было сделано

## Bot

add your API token inside `bot/index.ts`

1. `npm run build`
2. `npm run start`

## App should be developed under https and with telegram-web-app

```html
<script src="https://telegram.org/js/telegram-web-app.js"></script>
```
