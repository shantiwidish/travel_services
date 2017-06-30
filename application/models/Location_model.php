<?php

class Location_model extends MY_Model {
  private $table = "locations";

  function __construct()
  {
     parent::__construct($this->table);
  }

}
