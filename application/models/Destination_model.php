<?php

class Destination_model extends CI_Model {
  private $table = "destinations";

  public function get_last_ten()
  {
          $query = $this->db->get($this->table, 10);
          return $query->result();
  }

  public function get_by_id($id){
    $this->db->where('id', $id);
    $query = $this->db->get($this->table);
    return $query->result();
  }
}
