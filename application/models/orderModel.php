<?php

class orderModel extends CI_Model{
public function insertToDbOrder(){
       //  echo $this->session->userdata('numberOfRecords');
       // echo $this->session->userdata('proId');
      
         $numberofRecords = $this->session->userdata('numberOfRecords');
        //echo $numberofRecords;
        $name2 = $_POST["name2"];
        $email2 = $_POST["email2"];
        $address2 = $_POST["address2"];
        $city2 = $_POST["city2"];
        $state2 = $_POST["state2"];
        $zip2 = $_POST["zip2"];
        $credit2 = hash('md5',$_POST["credit2"]);
        $month2 = $_POST["month2"];
        $year2 = $_POST["year2"];

        $data = array(

                  'OrderId'=> 'DEFAULT',
                  'Name'=> $name2,
                  'EmailId'=> $email2,
                  'Address'=> $address2,
                  'City' => $city2,
                  'State' => $state2,
                  'Zip' => $zip2,
                  'Credit_Card' => $credit2,
                   'Month' => $month2,
                  'Year'=>$year2

                );
        $orderId = $this->db->insert('orders',$data);
        $sql = $this->db->query('SELECT OrderId FROM orders ORDER BY orderId desc');
        $query = $sql->result();
        $i = 1;
        $orderId = 0;

        foreach($query as $row){

            if($i == 1){
                
                $orderId = $row->OrderId;
                break;
            }
        }
        $prodNumber = 0;

        while($numberofRecords>=0){

          $check=$this->session->userdata('Qty'.$prodNumber);
         
            if(isset($check))
            {

                $data = array(
                  'quantity' => $this->session->userdata('Qty'.$prodNumber),
                  'price'=> $this->session->userdata('cost'.$prodNumber),
                  'orderId'=> $orderId,
                  'productsId' => $this->session->userdata('proId'.$prodNumber)
                  );

                  $this->db->insert('orderitems', $data);                    
            }
            $prodNumber = $prodNumber + 1;
            $numberofRecords = $numberofRecords - 1;
        }
        
    }

} 
?>