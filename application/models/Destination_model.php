<?php

class Destination_model extends MY_Model {
  private $table = "destinations";

  function __construct()
  {
     parent::__construct($this->table);
  }

}
