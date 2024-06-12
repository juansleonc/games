# Games API

Este proyecto implementa una API de juegos utilizando Sinatra rackup y MongoDB. Incluye un juego de Ahorcado (Hangman) y un juego de Rompecabezas Numérico (Puzzle).

## Contenido

- [Uso](#uso)
- [Pruebas](#pruebas)
- [API Endpoints](#api-endpoints)
  - [Hangman](#hangman)
  - [Puzzle](#puzzle)


## Uso

1. Inicia el servidor:

    ```bash
    docker compose up
    ```

2. Accede a los endpoints a través de `http://localhost:9292`.

## Pruebas

1. Ejecuta la consola bash del contenedor:

    ```bash
    docker compose run web /bin/bash
    ```
2. Ejecuta las pruebas:
  
    ```bash
    bundle exec rspec spec
    ```

## API Endpoints

### Hangman

Podras jugar por medio de una interfaz de consola 
    ```bash
    docker compose run web /bin/bash
    ```
    dentro de la consola de contenedor ejecutar:
   
    ```bash
    ruby hangman_client.rb
    ```

    
- **Iniciar un nuevo juego de Hangman**

  ```http
  GET /hangman/:pid
  ```

  **Respuesta:**

  ```json
  {
    "word": "______",
    "hint": null,
    "attempts": [],
    "chances": 8,
    "win": false,
    "failures": 0
  }
  ```

- **Intentar una letra**

  ```http
  GET /hangman/:pid/try/:letter
  ```

  **Respuesta:**

  ```json
  {
    "word": "_e____",
    "attempts": ["e"],
    "success": true,
    "state": "playing",
    "chances": 8,
    "failures": 0
  }
  ```

### Puzzle

- **Iniciar o obtener el estado actual del juego de Puzzle**

  ```http
  GET /puzzle/:user_id
  ```

  **Respuesta:**

  ```json
  {
    "board": [
      [1, 2, 3, 4],
      [5, 6, 7, 8],
      [9, 10, 11, 12],
      [13, 14, 15, null]
    ]
  }
  ```

- **Mover una pieza**

  ```http
  POST /puzzle/:user_id/move
  ```

  **Parámetros:**

  `direction`: Debe ser uno de `up`, `down`, `left`, `right`.

  **Respuesta:**

  ```json
  {
    "board": [
      [1, 2, 3, 4],
      [5, 6, 7, 8],
      [9, 10, 11, null],
      [13, 14, 15, 12]
    ],
    "solved": false
  }
  ```
