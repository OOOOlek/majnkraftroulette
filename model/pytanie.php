<?php
namespace majnkraftroulette;

use mysqli;

class pytanie {
    private int $ID; 
    private string $Pytanie; 
    private string $Odpowiedz; 

    public function __construct(int $ID, string $Pytanie, string $Odpowiedz) {
        $this->ID = $ID;
        $this->Pytanie = $Pytanie;
        $this->Odpowiedz = $Odpowiedz;
    }

    public static function getRandomQuestion(mysqli $db): ?self {
        $sql = "SELECT * FROM pytania ORDER BY RAND() LIMIT 1";
        $result = $db->query($sql);

        if ($result && $result->num_rows > 0) {
            $pytanieData = $result->fetch_assoc();
            return new self($pytanieData['ID'], $pytanieData['Pytanie'], $pytanieData['Odpowiedz']);
        }

        return null; 
    }

    public function getArray(): array {
        return [
            'ID' => $this->ID, 
            'Pytanie' => $this->Pytanie, 
            'Odpowiedz' => $this->Odpowiedz 
        ];
    }
}
?>