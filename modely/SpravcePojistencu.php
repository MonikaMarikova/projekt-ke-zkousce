<?php

// Třída poskytuje metody pro správu pojištěnců
class SpravcePojistencu
{

    /**
     * Vrátí seznam pojištěnců v databázi
     */
    public function vratPojistence(): array
    {
        return Db::dotazVsechny('
            SELECT `jmeno`, `prijmeni`, `vek`, `telefon`
            FROM `pojistenci`
            ORDER BY `pojistenci_id` DESC
        ');
    }

    public function ulozPojistence(array $pojistenec): void
    {
        Db::vloz('pojistenci', $pojistenec);
    }

    /*public function smazPojistence(string $pojistenci_id): void
    {
        Db::dotaz('
        DELETE FROM pojistenci
        WHERE pojistenci_id = ?
    ', array($pojistenci_id));
    }*/
}
