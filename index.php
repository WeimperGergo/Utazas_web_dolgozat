<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WGergo - utazas</title>
    <link rel="stylesheet" href="stilus.css">
</head>
<body>
<main>
    <?php
        $soforok = ["Mézga Géza", "Király Károly", "Kárpát Attila", "Fekete Sándor", "László Mihály"];
        $varosok= ["Balatonszemes", "Veszprém", "Kaposvár", "Pécs", "Zalaegerszeg"];
        $rSzamok = [];
        for ($i=0; $i < 5; $i++) { 
            array_push($rSzamok, rand(1, 200));    
        }
        // Kiírás
        for ($i=0; $i < count($varosok); $i++) { 
            echo $soforok[$i] . " , " . $varosok[$i] . " , " . $rSzamok[$i] . "<br>";
        }
        
        
        // Táblázat
        echo "<h2 style=\"text-align: center\">Táblázatba rendezve:</h2><table><tr><th>Sofőr</th><th>Város</th><th>Busz</th></tr>";
        for ($i=0; $i < count($varosok); $i++) { 
            echo "<td>" . $soforok[$i] . " </td><td>" . $varosok[$i] . " </td><td>" . $rSzamok[$i] . " </td><tr>";
        }
        echo "</table>";
    ?>
</main>
</body>
</html>