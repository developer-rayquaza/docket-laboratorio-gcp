# Usar una imagen oficial de Python como base
FROM python:3.9-slim

# Establecer el directorio de trabajo en la imagen Docker
WORKDIR /app

# Copiar los archivos de la aplicación a la imagen Docker
COPY . .

# Instalar las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Exponer el puerto 80802
EXPOSE 8080

# Comando para ejecutar la aplicación Streamlit 3
# Esto será ejecutado en la consola cuando la imagen Docker sea ejecutada
# streamlit run app.py --server.port=8080
CMD ["python", "-m", "streamlit", "run", "app.py", "--server.port", "8080", "--server.enableCORS", "false"]
