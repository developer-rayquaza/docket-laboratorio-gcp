import streamlit as st
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

st.title("Mi primera app en Streamlit")

name = st.text_input("¿Cuál es tu nombre?", "Escribe tu nombre aquí")

st.write(f"Hola, {name}! Bienvenido a tu primera app en Streamlit.")

data = pd.DataFrame({
    'x': np.random.randn(100),
    'y': np.random.randn(100)
})

st.subheader("Gráfico de datos aleatorios")
plt.scatter(data['x'], data['y'])
plt.title("Datos aleatorios")
st.pyplot(plt)
