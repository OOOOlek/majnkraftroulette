<?php
namespace majnkraftroulette;
use mysqli;

class pytanie {
    private $ID;
    private $Pytanie;
    private $Odpowiedz;
   

    public function __construct($ID, $Pytanie, $Odpowiedz) {
    $this->ID = $ID;
    $this->Pytanie = $Pytanie;
    $this->Odpowiedz = $Odpowiedz
    }

    public static function getpytanie($ID, $db) {
        $sql = "SELECT * FROM pytania WHERE ID = ?";
        $query = $db->prepare($sql);
        $query->bind_param('i', $ID);
        $query->execute();
        $result = $query->get_result();
        $pytanieData = $result->fetch_assoc();
        return new Pytanie($pytanieData['ID'], $pytanieData['Pytanie'], $pytanieData['Odpowiedz']);
    }
    public function getArray(): array {
        return [
            'ID' => $this->id,
            'Pytanie' => $this->pytanie,
            'Odpowiedz' => $this->odpowiedz
        ];

    }
}
?>