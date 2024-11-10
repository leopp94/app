# Usa una imagen base de Python
FROM python:3.12.2

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos necesarios a la imagen
COPY . .

# Instala Flask
RUN pip install flask

# Define una variable de entorno para Flask
ENV FLASK_APP=app.py

# Expone el puerto 5000
EXPOSE 5000

# Ejecuta la aplicación
CMD ["flask", "run", "--host=0.0.0.0"]
