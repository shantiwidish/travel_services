<?php

defined('BASEPATH') OR exit('No direct script access allowed');

// This can be removed if you use __autoload() in config.php OR use Modular Extensions
/** @noinspection PhpIncludeInspection */
require APPPATH . '/libraries/REST_Controller.php';

/**
 * This is an example of a few basic user interaction methods you could use
 * all done with a hardcoded array
 *
 * @package         CodeIgniter
 * @subpackage      Rest Server
 * @category        Controller
 * @author          Phil Sturgeon, Chris Kacerguis
 * @license         MIT
 * @link            https://github.com/chriskacerguis/codeigniter-restserver
 */
class Listed extends REST_Controller {

    function __construct()
    {
        // Construct the parent class
        parent::__construct();

        // Configure limits on our controller methods
        // Ensure you have created the 'limits' table and enabled 'limits' within application/config/rest.php
        /*
        $this->methods['users_get']['limit'] = 500; // 500 requests per hour per user/key
        $this->methods['users_post']['limit'] = 100; // 100 requests per hour per user/key
        $this->methods['users_delete']['limit'] = 50; // 50 requests per hour per user/key
        */
    }

    public function index_get()
    {
      $this->load->model('listedtrip_model', 'listed');

        $id = $this->get('id');

        // If the id parameter doesn't exist return all the users

        if ($id === NULL)
        {
          $listeds = $this->listed->get_all();

          // Check if the users data store contains users (in case the database result returns NULL)
          if ($listeds)
          {
              // Set the response and exit
              $this->response($listeds, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
          }
          else
          {
              // Set the response and exit
              $this->response([
                  'status' => FALSE,
                  'message' => 'No list were found'
              ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
          }
        }

        // Find and return a single record for a particular user.

        $id = (int) $id;

        // Validate the id.
        if ($id <= 0)
        {
            // Invalid id, set the response and exit.
            $this->response(NULL, REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the user from the array, using the id as key for retrieval.
        // Usually a model is to be used for this.

        $listed =  $this->listed->get_by_id($id);
        if (!empty($listed))
        {
            $this->set_response($listed, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
        else
        {
            $this->set_response([
                'status' => FALSE,
                'message' => 'Destination could not be found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function index_post()
    {
      $this->load->model('listedtrip_model', 'listed');
      $destinationId = $this->post('destination_id');
      // Validate the id.
      if ($destinationId <= 0)
      {
          // Set the response and exit
          $this->response(NULL, REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
      }
        $message = [
            'destination_id' => $this->post('destination_id'),
            'start_date' => $this->post('start_date'),
            'end_date' => $this->post('end_date'),
            'quantity' => $this->post('quantity')
        ];
        $result = $this->listed->get_by_keys(array("destination_id", "start_date"), $message);
        
        if(sizeof($result)>0){
          $message['quantity'] += $result[0]->quantity;
          $this->listed->update_data($result[0]->id,$message);
        }else{
          $this->listed->add_data($message);
        }

        $this->set_response("Added a resource", REST_Controller::HTTP_CREATED); // CREATED (201) being the HTTP response code
    }

}
