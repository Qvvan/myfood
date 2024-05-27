import qrcode

# Укажите URL вашего сайта
url = "https://qvvan.github.io/ErlangModelCalculator/"

# Создание QR-кода
img = qrcode.make(url)

# Сохранение QR-кода в файл
img.save("menu_qr_code.png")

print("QR-код успешно создан и сохранен как menu_qr_code.png")
