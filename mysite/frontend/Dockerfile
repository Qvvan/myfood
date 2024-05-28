# frontend/Dockerfile

# Используем официальный образ Node.js в качестве базового образа
FROM node:16-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем package.json и package-lock.json в рабочую директорию контейнера
COPY my-frontend/package.json my-frontend/package-lock.json ./

# Устанавливаем зависимости
RUN npm install

# Устанавливаем дополнительные библиотеки
RUN npm install @mui/material @emotion/react @emotion/styled

# Копируем весь проект в рабочую директорию контейнера
COPY my-frontend/ ./

# Открываем порт 3000 для доступа к приложению
EXPOSE 3000

# Запускаем приложение
CMD ["npm", "start"]
