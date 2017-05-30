<?php

class Agent_model extends CI_Model {
  private $table = "agents";

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
