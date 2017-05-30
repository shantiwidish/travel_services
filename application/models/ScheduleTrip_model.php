<?php

class ScheduleTrip_model extends CI_Model {
  private $table = "schedule_trips";

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

  public function add_data($data){
    $this->db->insert($this->table, $data);

  }

  public function update_data($id, $data){
    $this->db->where('id', $id);
    $this->db->update($this->table, $data);
  }

  public function delete_by_id($id){
    $this->db->where('id', $id);
    $this->db->delete($this->table); 
  }
}
