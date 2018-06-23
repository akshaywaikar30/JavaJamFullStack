<!-- <script src="<?php echo base_url();?>js/order.js"></script> -->
<div class="order_colright" >
					<header><h1>JavaJam Coffee House</h1></header>		
				
				<h2 align="center">Shopping Cart</h2>
				
					<table align="center" border="0" cellpadding="4" class="content">
					<tr id="contentrow">
						<td align="center"><b>Description</b></td>
						<td><b>Quantity</b></td>
						<td><b>Price</b></td>
					</tr>
<?php

                                if(isset($_SESSION['numberOfRecords'])){
                                    $numberOfProduct = $_SESSION['numberOfRecords'];
                                }else{
                                    $numberOfProduct = -1;
                                }
                                $prodNumber = 0;
                               
                                while($numberOfProduct >= 0 ){
                                    if(isset($_SESSION['desc'.$prodNumber])){
                                        echo '<tr id="contentrow1">';
                                        echo '<td id = "product">'.$_SESSION['desc'.$prodNumber] .'</td>';
                                        echo '<td id = "qty"> '.$_SESSION['Qty'.$prodNumber].' </td>';
                                        $cost = $_SESSION['Qty'.$prodNumber] * $_SESSION['cost'.$prodNumber]; 
                                        echo '<td id = "price">$'.$cost.'</td>';
                                        echo '</tr>';
                                    }
                                    $prodNumber = $prodNumber  + 1;
                                    $numberOfProduct = $numberOfProduct - 1;
                                }
                                $total = 0;
                                $numberOfRecords = 0;
                                if(isset($_SESSION['numberOfRecords'])){
                                    $numberOfRecords = $_SESSION['numberOfRecords'];
                                }else{
                                    $numberOfRecords = -1;
                                }
                                $prodNumber = 0;
                                while($numberOfRecords >= 0){
                                    
                                    if(isset($_SESSION['desc'.$prodNumber])){
                                        $total = $total + ($_SESSION['cost'.$prodNumber] * $_SESSION['Qty'.$prodNumber]);
                                    }//end of if
                                    $prodNumber = $prodNumber + 1;
                                    $numberOfRecords = $numberOfRecords - 1;
                                }//end while

                                echo '<tr><td></td><td>Total</td><td>$'.$total.'</td>';

                            ?>
					</table>
					<?php
                   
                           
                            
                            if(isset($_POST["submit"])){
                               if($this->form_validation->run() == TRUE){
                                    echo "<p> Your order is placed Successfully ! </p>";
                                }//end of inner if
                            }

                            $at = array('id' => 'order_form');
                            echo form_open('gear/checkValidationErrors',$at);
                        //<fieldset>
                            $at1=array('class' => 'order_fs');
                            echo form_fieldset('Fill Details',$at1);
                            //<!--<legend>Fill Details:</legend>-->
                           
                           echo '<table cellpadding="5"  align="center">';
                                echo "<tr>";

                                echo "<td>".form_label('Name:')."</td>";
                                $data_name = array('name'=>'name2', 'id'=>'name2', 'placeholder'=>'Please Enter Name');
                                echo "<td>".form_input($data_name)."</td>";
                                echo '<div class = "error">';
                                        echo form_error('name2');
                               echo '</div>';
                               echo "</tr>";

                                echo "<tr>";
                                echo "<td>".form_label('Email:')."</td>";
                                $data_email = array('name'=>'email2', 'id'=>'email2', 'placeholder'=>'xyz@abc.com');
                                echo "<td>".form_input($data_email)."</td>";
                                echo '<div class = "error">';
                                        echo form_error('email2');
                                echo '</div>';
                                echo "</tr>";

                                echo "<tr>";
                                echo "<td>".form_label('Address:')."</td>";
                                $data_address = array('name'=>'address2', 'id'=>'address2', 'placeholder'=>'Enter Address');
                                echo "<td>".form_input($data_address)."</td>";
                                echo '<div class = "error">';
                                        echo form_error('address2');
                                echo '</div>';
                                echo "</tr>";

                                echo "<tr>";
                                echo "<td>".form_label('City:')."</td>";
                                $data_city = array('name'=>'city2', 'id'=>'city2', 'placeholder'=>'Enter City');
                                echo "<td>".form_input($data_city)."</td>";
                                echo '<div class = "error">';
                                        echo form_error('city2');
                                echo '</div>';
                                echo "</tr>";
                           
                                echo "<tr>";
                                echo "<td>".form_label('State:')."</td>";
                                $data_state = array('name'=>'state2', 'id'=>'state2', 'placeholder'=>'Enter State');
                                echo "<td>".form_input($data_state)."</td>";
                                echo '<div>';
                                        echo form_error('state2');
                                echo '</div>';
                                echo "</tr>";

                                echo "<tr>";
                                echo "<td>".form_label('Zip:')."</td>";
                                $data_zip = array('name'=>'zip2', 'id'=>'zip2', 'placeholder'=>'Enter Zip');
                                echo "<td>".form_input($data_zip)."</td>";
                                echo '<div>';
                                        echo form_error('zip2');
                                echo '</div>';
                                echo "</tr>";


                                echo "<tr>";
                                echo "<td>".form_label('Credit Card:')."</td>";
                                $data_credit = array('name'=>'credit2', 'id'=>'credit2', 'placeholder'=>'Enter Credit Card Number');
                                echo "<td>".form_input($data_credit)."</td>";
                                echo '<div class = "error">';
                                        echo form_error('credit2');
                                echo '</div>';
                                echo "</tr>";
                            

                                echo "<tr>";
                                echo "<td>".form_label('Month:')."</td>";
                                $data_month = array('name'=>'month2', 'id'=>'month2', 'placeholder'=>'Enter the Month');
                                echo "<td>".form_input($data_month)."</td>";
                                echo '<div class = "error">';
                                        echo form_error('month2');
                                echo '</div>';                                
                               echo "</tr>";

                               echo "<tr>";
                                echo "<td>".form_label('Year:')."</td>";
                                $data_year = array('name'=>'year2', 'id'=>'year2', 'placeholder'=>'Enter the Year');
                                echo "<td>".form_input($data_year)."</td>";
                                echo '<div class = "error">';
                                        echo form_error('year2');
                                echo '</div>';
                                echo "</tr>";
                            
                                echo "</table>";
                            echo '<input id = "orderButton" type="submit" name="submit" onclick="validateOrder()" value="Order Now">';
                      
                           echo form_fieldset_close();
                   
                           echo form_close();

                           
                           ?>
                       </div>