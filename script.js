// JavaScript - язык программирования для интерактивности

// Получаем элементы из HTML по их ID
const greeting = document.getElementById('greeting');
const changeBtn = document.getElementById('changeBtn');
const textBtn = document.getElementById('textBtn');
const resetBtn = document.getElementById('resetBtn');
const countElement = document.getElementById('count');
const card = document.querySelector('.card');

// Переменная для подсчёта кликов
let clickCount = 0;

// Массив с возможными цветами
const colors = ['#667eea', '#f093fb', '#4facfe', '#43e97b', '#fa709a', '#9b59b6'];
let colorIndex = 0;

// Массив с разными приветствиями
const greetings = [
    'Привет, будущий разработчик!',
    'Вы отлично справляетесь! 💪',
    'JavaScript - это круто! 🔥',
    'Продолжайте учиться! 📚',
    'Вы на правильном пути! ✨'
];
let greetingIndex = 0;

// Функция для изменения цвета заголовка
function changeColor() {
    // Увеличиваем индекс цвета
    colorIndex = (colorIndex + 1) % colors.length;
    
    // Применяем новый цвет
    greeting.style.color = colors[colorIndex];
    
    // Обновляем счётчик
    updateCounter();
}

// Функция для изменения текста
function changeText() {
    // Увеличиваем индекс приветствия
    greetingIndex = (greetingIndex + 1) % greetings.length;
    
    // Меняем текст
    greeting.textContent = greetings[greetingIndex];
    
    // Обновляем счётчик
    updateCounter();
}

// Функция для обновления счётчика
function updateCounter() {
    clickCount++;
    countElement.textContent = clickCount;
    
    // Добавляем анимацию
    countElement.style.fontSize = '3rem';
    countElement.style.color = '#ff0000';
    setTimeout(() => {
        countElement.style.fontSize = '1.5rem';
        countElement.style.color = '#ffd700';
    }, 1000);
}

// Функция для сброса всего
function resetAll() {
    // Сбрасываем счётчик
    clickCount = 0;
    countElement.textContent = clickCount;
    
    // Сбрасываем цвет заголовка
    colorIndex = 0;
    greeting.style.color = colors[0];
    
    // Сбрасываем текст
    greetingIndex = 0;
    greeting.textContent = greetings[0];
    
    // Сбрасываем размер и цвет счётчика
    countElement.style.fontSize = '1.5rem';
    countElement.style.color = '#ffd700';
}

// Добавляем обработчики событий (слушатели) на кнопки
// Когда пользователь кликает на кнопку, вызывается функция
changeBtn.addEventListener('click', changeColor);
textBtn.addEventListener('click', changeText);
resetBtn.addEventListener('click', resetAll);

// Выводим сообщение в консоль (откройте DevTools - F12)
console.log('👋 Привет! Скрипт успешно загружен!');
console.log('💡 Совет: откройте консоль разработчика (F12) чтобы увидеть это сообщение');

