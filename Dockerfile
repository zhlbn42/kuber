# 1. Берем легкий образ nginx
FROM nginx:alpine

# 2. Копируем файлы твоего сайта (например, index.html) в папку nginx
# Если у тебя файлы лежат в папке 'dist' или 'public', замени '.' на имя папки
COPY . /usr/share/nginx/html

# 3. Открываем 80 порт
EXPOSE 80

# 4. Запускаем nginx
CMD ["nginx", "-g", "daemon off;"]
