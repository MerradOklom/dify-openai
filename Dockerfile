# Usa la imagen oficial de Rust como base
FROM rust:1.71.1

# Establece el directorio de trabajo
WORKDIR /usr/src/dify-openai-apis

# Copia los archivos necesarios para compilar el proyecto
COPY . .

# Compila el proyecto
RUN cargo build --release

# Expone el puerto que el servicio usará
EXPOSE 3000

# Establece las variables de entorno necesarias
ENV HOST=0.0.0.0
ENV PORT=3000

# Comando para ejecutar el servicio
CMD ["./target/release/dify-openai-apis"]
