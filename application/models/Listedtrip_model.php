<?php

class Listedtrip_model extends MY_Model {
  private $table = "listed_trips";

  function __construct()
  {
     parent::__construct($this->table);
  }

}
