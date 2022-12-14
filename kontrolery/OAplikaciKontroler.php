<?php

class OAplikaciKontroler extends Kontroler
{
    public function zpracuj(array $parametry): void
    {
        $this->hlavicka = array(
            'titulek' => 'O aplikaci',
            'klicova_slova' => 'aplikace, projekt, zkouška',
            'popis' => 'Informace o aplikaci.'
        );

        $this->pohled = 'oaplikaci';
    }
}