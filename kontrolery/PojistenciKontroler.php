<?php

class PojistenciKontroler extends Kontroler
{
    public function zpracuj(array $parametry) : void
    {
        $spravcePojistencu = new SpravcePojistencu();

        $pojistenec = array(
            'pojistenci_id' => '',
            'jmeno' => '',
            'prijmeni' => '',
            'vek' => '',
            'telefon' => '',
        );
        if ($_POST)
        {
            // Získání pojištěnce z $_POST
            $klice = array('jmeno', 'prijmeni', 'vek', 'telefon');
            $pojistenec = array_intersect_key($_POST, array_flip($klice));
            // Uložení pojištěnce do DB
            $spravcePojistencu->ulozPojistence($pojistenec);
            $this->pridejZpravu('Pojištěnec byl úspěšně vložen do databáze.');
            $this->presmeruj('pojistenci');
        }

        $pojistenci = $spravcePojistencu->vratPojistence();
        $this->data['pojistenci'] = $pojistenci;
        $this->pohled = 'pojistenci';

        $this->hlavicka = array(
            'titulek' => 'Pojištěnci',
            'klicova_slova' => 'pojištěnci, formulář, nový',
            'popis' => 'Přehled pojištěnců a vložení nového pojištěnce.'
        );

        $this->pohled = 'pojistenci';
    }
}