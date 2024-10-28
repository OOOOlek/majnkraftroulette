<?php
namespace majnkraftroulette;

use mysqli;

class ruletka {
 
    private $id;
    private $idUzytkownika;
    private $idRankingu;
    private $idStatystyki;

    
    public function __construct(int $id, int $idUzytkownika, int $idRankingu, int $idStatystyki) {
        $this->id = $id;
        $this->idUzytkownika = $idUzytkownika;
        $this->idRankingu = $idRankingu;
        $this->idStatystyki = $idStatystyki;
    }

    
    public static function getRuletka(int $id, mysqli $db): Ruletka {
        
        $sql = "SELECT * FROM ruletka WHERE ID = ?";
        $query = $db->prepare($sql);
        $query->bind_param('i', $id);
        $query->execute();

        
        $result = $query->get_result();
        $ruletkaData = $result->fetch_assoc();

      
        return new Ruletka($ruletkaData['ID'], $ruletkaData['ID_uzytkownika'], $ruletkaData['ID_Rankingu'], $ruletkaData['ID_Statystyki']);
    }

    
    public function getArray(): array {
        return [
            'ID' => $this->id,
            'ID_uzytkownika' => $this->ID_Uzytkownika,
            'ID_Rankingu' => $this->ID_Rankingu,
            'ID_Statystyki' => $this->ID_Statystyki
        ];
    }
}
?>