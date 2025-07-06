<!DOCTYPE html>
<html lang="it">
<head>
  <meta charset="UTF-8" />
  <title>Login Campo Scout Spaziale</title>
  <style>
    html, body {
      margin: 0; padding: 0; height: 100%;
      font-family: Arial, sans-serif;
      color: white;
      overflow: hidden;
    }
    body {
      background-color: #000011;
      position: relative;
    }
    #stars {
      position: fixed;
      top: 0; left: 0;
      width: 100%;
      height: 100%;
      z-index: -1;
      display: block;
    }
    .container {
      background: rgba(30, 34, 56, 0.9);
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 0 20px #00ffff66;
      max-width: 600px;
      margin: 15% auto;
      text-align: center;
      transform: scale(1.2);
    }
    label, select, button {
      display: inline-block;
      font-size: 16px;
      margin: 10px 5px;
      vertical-align: middle;
    }
    select {
      padding: 8px;
      border-radius: 5px;
      border: none;
      min-width: 120px;
    }
    button {
      background: #00ffff;
      border: none;
      padding: 10px 20px;
      border-radius: 5px;
      cursor: pointer;
      margin-top: 20px;
      font-weight: bold;
    }
  </style>
</head>
<body>
  <canvas id="stars"></canvas>

  <div class="container">
    <h2>Login Campo Scout Spaziale</h2>
    <div>
      <label for="teamSelect">Seleziona Squadra:</label>
      <select id="teamSelect">
        <option value="0">Squadra 1</option>
        <option value="1">Squadra 2</option>
        <option value="2">Squadra 3</option>
        <option value="3">Squadra 4</option>
        <option value="4">Squadra 5</option>
      </select>
    </div>
    <div>
      <label for="daySelect">Seleziona Giorno:</label>
      <select id="daySelect">
        <option value="0">Giorno 1</option>
        <option value="1">Giorno 2</option>
        <option value="2">Giorno 3</option>
        <option value="3">Giorno 4</option>
        <option value="4">Giorno 5</option>
      </select>
    </div>
    <button onclick="goToMorse()">Mostra Morse</button>
  </div>

  <script>
    const canvas = document.getElementById('stars');
    const ctx = canvas.getContext('2d');

    function resize() {
      canvas.width = window.innerWidth;
      canvas.height = window.innerHeight;
    }

    function drawStars() {
      ctx.clearRect(0, 0, canvas.width, canvas.height);
      const starCount = 400;
      for (let i = 0; i < starCount; i++) {
        const x = Math.random() * canvas.width;
        const y = Math.random() * canvas.height;
        const radius = Math.random() * 1.5;
        ctx.beginPath();
        ctx.arc(x, y, radius, 0, 2 * Math.PI);
        ctx.fillStyle = 'white';
        ctx.globalAlpha = Math.random();
        ctx.fill();
      }
      ctx.globalAlpha = 1;
    }

    window.addEventListener('resize', () => {
      resize();
      drawStars();
    });

    resize();
    drawStars();

    function goToMorse() {
      const team = document.getElementById('teamSelect').value;
      const day = document.getElementById('daySelect').value;
      window.location.href = `morse.html?team=${team}&day=${day}`;
    }
  </script>
</body>
</html>
