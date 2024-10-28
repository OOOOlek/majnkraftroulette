<?php
require_once('Route.php');
require_once('model/pytanie.php');

$db = new mysqli('localhost', 'root', '', 'majnkraftroulette');
$db->set_charset('utf8');

use Steampixel\Route;
use majnkraftroulette\rejestracja;
use majnkraftroulette\pytanie;

Route::add('/', function(){
echo 'Nie zwróciłeś żadnego parametru API';
});

Route::add('/ranking/([0-9]*)', function($ID_Rankingu) use($db) {
   $result = $db->query("SELECT * FROM ranking WHERE ID_Rankingu = $ID_Rankingu");
   $ranking = $result->fetch_assoc();
   header('Content-Type:application/json');
   return json_encode($ranking);
});

Route::add('/statystyki/([0-9]*)', function($ID_Statystyki) use($db) {
    $result = $db->query("SELECT * FROM statystyki WHERE ID_Statystyki = $ID_Statystyki");
    $statystyki = $result->fetch_assoc();
    header('Content-Type:application/json');
    return json_encode($statystyki);
 });

 Route::add('/uzytkownicy/([0-9]*)', function($ID_uzytkownika) use($db) {
    $result = $db->query("SELECT * FROM uzytkownicy WHERE ID_uzytkownika = $ID_uzytkownika");
    $uzytkownicy = $result->fetch_assoc();
    header('Content-Type: application/json');
    return json_encode($uzytkownicy);
});

Route::add('/ruletka/([0-9]*)', function($ID) use($db) {
    $result = $db->query("SELECT * FROM ruletka WHERE ID = $ID");
    $ruletka = $result->fetch_assoc();
    header('Content-Type: application/json');
    return json_encode($ruletka);
});

Route::add('/pytanie/([0-9]*)', function($ID) use($db) {
   $pytania = pytanie::getpytanie($ID, $db);
    header('Content-Type: application/json');
    return json_encode($pytania->getArray());
});

 Route::run('/majnkraftroulette');

 $db->close()
?>