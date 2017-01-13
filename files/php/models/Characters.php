<?php

class Characters {

    public $counter;
    public $active;
    public $name;
    public $sex;
    public $age;
    public $race;
    public $physique;
    public $sexuality;
    public $profession;
    public $weaknesses;
    public $strengths;
    public $likes;
    public $dislikes;
    public $fears;
    public $goals;
    public $circumstances;
    public $notes;

    public function __construct() {$this->counter = 0;}

    public function add($param) {
        foreach($param as $k => $v) $this->{$k}[$this->counter] = $v;
        $this->active[$this->counter] = 1;
        $this->counter++;
    }

    public function update($param) {
        $this->{$param["prop"]}[(int)$param["id"]] = $param["value"];
    }

    public function delete($param) {
        $this->active[(int)$param["id"]] = 0;
    }

    public function recover() {
        for($i = 0;$i < $this->counter;$i++) $this->active[$i] = 1;
    }

    public function reckon() {
        $aux = 0;
        for($i = 0;$i < $this->counter;$i++) {
            if($this->active[$i] === 1) $aux++;
        }
        return $aux;
    }

}