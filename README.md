# Tektonium

![Tektonium](https://img.shields.io/badge/Proyecto-Tektonium-00f3ff?style=for-the-badge)

Bienvenido a **Tektonium**. Este proyecto es una aproximación conceptual enfocada en combinar una estructura robusta (la tectónica y arquitectura) con el impacto visual, moderno y dinámico de la web digital.

## 🚀 Contenido

- **`index.html`**: Una página de inicio (*landing page*) con diseño premium en estado sólido, usando CSS moderno con variables visuales, tipografía limpia y animaciones fluidas (cristalmorfismo).
- **`Dockerfile`**: Un script de Docker ultra-liviano basado en `nginx:alpine` para empaquetar y entregar este contenido bajo un servidor proxy eficiente.

## 🛠 Despliegue con Docker

Para correr este proyecto utilizando Docker en tu máquina local, sigue estos pasos:

### 1. Construir la imagen
Abre tu terminal en la raíz de la carpeta de este proyecto y construye la imagen ejecutando:
```bash
docker build -t tektonium-web .
```

### 2. Ejecutar el servidor
Una vez construida la imagen, despliega un contenedor que escuche en el puerto que elijas (p.ej. 8080):
```bash
docker run -d -p 8080:80 --name tektonium-server tektonium-web
```

### 3. Visualizar
Visita [http://localhost:8080](http://localhost:8080) en tu navegador para ver la web y sus animaciones funcionando.

### 4. Limpieza (Opcional)
Si quieres detener el servicio en cualquier momento, usa:
```bash
docker stop tektonium-server
docker rm tektonium-server
```