<?php
$username = "root";
$password = "";

$mensaje = "";

$dbname = "verb_searcher";
try {
    $con = new PDO('mysql:host=localhost;dbname='.$dbname, $username, $password); // Creamos la conexión
    $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
} catch(PDOException $e) {
    echo 'Error: ' . $e->getMessage();
    return NULL;
}

$verb = $_POST['valorBusqueda'];
$infinitive = "";
$preterite  = "";
$participle = "";

$SELECT = $con->prepare('SELECT * FROM verbs WHERE infinitive = ?');
$SELECT->execute([$verb]);
$row = $SELECT->fetch();
if($row) {
    //El verbo esta en col 1
    $infinitive = "to ".$verb." ";
    $preterite  = $row['preterite']." ";
    $participle = $row['participle'];
    armar_mensaje($infinitive, $preterite, $participle);
} else {
    $SELECT_2 = $con->prepare('SELECT * FROM verbs WHERE preterite = ?');
    $SELECT_2->execute([$verb]);
    $row_2 = $SELECT_2->fetch();
    if($row_2) {
        //El verbo esta en col 2
        $infinitive = "to ".$row_2['infinitive']." ";
        $preterite  = $verb." ";
        $participle = $row_2['participle'];
        armar_mensaje($infinitive, $preterite, $participle);
    } else {
        $SELECT_3 = $con->prepare('SELECT * FROM verbs WHERE participle = ?');
        $SELECT_3->execute([$verb]);
        $row_3 = $SELECT_3->fetch();
        if($row_3) {
            //El verbo esta en col 3
            $infinitive = "to ".$row_3['infinitive']." ";
            $preterite  = $row_3['preterite']." ";
            $participle = $verb;
            armar_mensaje($infinitive, $preterite, $participle);
        } else { // Hardcodear verbos que tienen mas de una pronunciacion. O caso Read.
            if($verb == "daniel" || $verb == "Daniel" || $verb == "Adrian" || $verb == "adrian") {
                mostrar("Gran programador");
            } if($verb == "Majo" || $verb == "majo") {
                mostrar("papitas con cheddar. Ay que rico unas papitas cheddar");
            } else {
                mostrar("<button class='btn btn-danger text-white'>Ups, the verb is not in the list</button>");
            }
        }
    }
}

function armar_mensaje($infinitive, $preterite, $participle) {
    $mensaje = "";
    $a1 = trim($infinitive, "to");
    $a1 = trim($a1);
    $a2 = trim($preterite);
    $a3 = trim($participle);

    if($a1 == "read") {
        $a2 = "read_";
        $a3 = "read_";
    }

    $a1 = strtolower($a1);
    $a2 = strtolower($a2);
    $a3 = strtolower($a3);

    $mensaje = $infinitive." <button id='reproductor' class='btn btn-warning text-dark reproductor'><i class='fas fa-volume-up'></i></button>
    <audio id='audio'>
        <source src='audios/".$a1.".mp3' type='audio/mpeg'>
    </audio>
    <script>
        var soundBtn = document.querySelector('.reproductor');
        var myAudio = document.querySelector('#audio');
        soundBtn.addEventListener('click',()=>{
            myAudio.play();
        });
    </script><br>";
    $mensaje .= $preterite." <button id='reproductor2' class='btn btn-warning text-dark reproductor2'><i class='fas fa-volume-up'></i></button>
    <audio id='audio2'>
        <source src='audios/".$a2.".mp3' type='audio/mpeg'>
    </audio>
    <script>
        var soundBtn2 = document.querySelector('.reproductor2');
        var myAudio2 = document.querySelector('#audio2');
        soundBtn2.addEventListener('click',()=>{
            myAudio2.play();
        });
    </script><br>";
    $mensaje .= $participle." <button id='reproductor3' class='btn btn-warning text-dark reproductor3'><i class='fas fa-volume-up'></i></button>
    <audio id='audio3'>
        <source src='audios/".$a3.".mp3' type='audio/mpeg'>
    </audio>
    <script>
        var soundBtn3 = document.querySelector('.reproductor3');
        var myAudio3 = document.querySelector('#audio3');
        soundBtn3.addEventListener('click',()=>{
            myAudio3.play();
        });
    </script><br>";

    echo $mensaje;
    //mostrar($mensaje);
    $con = null;
}

function mostrar($mensaje) {
    echo "<strong>".$mensaje."</strong>";
}

$con = null;
?>
