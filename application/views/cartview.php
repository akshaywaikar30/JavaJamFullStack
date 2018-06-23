				<div class="colright">
					<header><h1>JavaJam Coffee House</h1></header>
			
				<h2 align="center">Shopping Cart</h2>
 
					<table class="content" align="center" border="0" cellpadding="10">
					<tr id="contentrow1">
						<td align="center"><b>Description</b></td>
						<td><b>Quantity</b></td>
						<td><b>Price</b></td>
					</tr>
					 <?php 
					 
                                $qty1 = 1;
                                $qty =1;
                                $cost1 = 0;
                                $numberOfRecords = 0;
                                $prodNumber = 0;
                                $currentProduct = "";
                                $totalCost = 0;
                                $num_dbRecords = 0; 
                                if(isset($_POST["submit"])){
                                    if(isset($_SESSION['numberOfRecords'])){
                                        $_SESSION['numberOfRecords'] = $_SESSION['numberOfRecords'] + 1;
                                    }else{
                                        $_SESSION['numberOfRecords'] = 1;
                                                       
                                    }
                                    $num_dbRecords = $_SESSION['result'];
                                    $num_dbRecords = $num_dbRecords - 1;
                                  
                                    $numberOfRecords = $_SESSION['numberOfRecords'];
                                    
                                    while($num_dbRecords >= 0){
                                        
                                        if(isset($_POST["desc".$prodNumber])){
                                            echo '<tr id="contentrow1">';
                                            echo '<td>'.$_POST["desc".$prodNumber] .'</td>';
                                            $_SESSION['cost'.$prodNumber] = $_POST["cost".$prodNumber];
                                            $_SESSION['desc'.$prodNumber] = $_POST["desc".$prodNumber];
                                           
                                            $_SESSION['currentProduct'] = $_POST["desc".$prodNumber];
                                            if(isset($_SESSION['Qty'.$prodNumber])){
                                                $_SESSION['Qty'.$prodNumber] = $_SESSION['Qty'.$prodNumber] + 1;   
                                            }
                                            else{
                                                $_SESSION['Qty'.$prodNumber] = 1;
                                            }
                                            $qty = $_SESSION['Qty'.$prodNumber];
                                            echo '<td> '.$qty. '</td>';
                                            $cost1 = $_SESSION["cost".$prodNumber] * $qty;
                                            echo '<td>$'.$cost1 .'</td>';
                                            echo '</tr>';
                                        }
                                        $num_dbRecords = $num_dbRecords - 1;
                                        $prodNumber = $prodNumber + 1;
                                    }

                                    $prodNumber = 0;
                                    while($numberOfRecords >= 0)
                                    {
                                        if(isset($_SESSION['desc'.$prodNumber])){
                                            if($_SESSION['desc'.$prodNumber] != $_SESSION['currentProduct']){
                                                echo '<tr id="contentrow1">';
                                                echo '<td>'.$_SESSION['desc'.$prodNumber] .'</td>';
                                                $qty = $_SESSION['Qty'.$prodNumber];
                                                echo '<td> '.$qty. '</td>';
                                                $cost1 = $_SESSION['cost'.$prodNumber] * $qty;
                                                echo '<td>$'.$cost1.'</td>';
                                                echo '</tr>';   
                                            }
                                        }
                                        $numberOfRecords = $numberOfRecords - 1;
                                        $prodNumber = $prodNumber + 1;
                                    }
                                        
                                    $numberOfRecords = $_SESSION['result'];
                                    
                                    $prodNumber = 0;
                                    while($numberOfRecords >= 0){
                                        //
                                        if(isset($_SESSION['desc'.$prodNumber])){
                                            $totalCost = $totalCost + ($_SESSION['cost'.$prodNumber] * $_SESSION['Qty'.$prodNumber]);
                                        }
                                        $prodNumber = $prodNumber + 1;
                                        $numberOfRecords = $numberOfRecords - 1;
                                    }

                                }
                                echo '<tr><td></td><td>Total</td><td>$'.$totalCost.'</td>'; 
                                ?>
                    </table>
                        <form class="cart_form">                     
                            <input type="button" onclick="location.href='orderController';" value="Place Order"" />
                            
                            <input type="button" name="continue" value="Continue Shopping" onclick="location.href='gearController';" align="right" class="cart_input">
                    </form>
				</div>
		</div>
