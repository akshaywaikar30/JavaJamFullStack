
					<img src="<?php echo base_url();?>images\couch.jpeg" alt="heroguitar" width="100%" height="180px">
					<h2>JavaJam Gear</h2>
						<p id="p_size">JavaJam gear not only looks good, it's good to your wallet, too<br>
							 Get a 10% discount when you wear a JavaJam shirt or bring in your JavaJam mug!
						</p>
			<?php
			$proId=1;
			
				foreach($products as $prod)
					{

										echo '<form method="post" action="cartController">';
                                        echo "<table class='tablefont'>";
                                        echo "<tr>";
                                        echo "<td id='table1' rowspan='2'><img id='gear_img' height='65px' width='65px' src=".$prod ->product_image_url." ></td>";
                                      	echo "<td id='geartabletd' valign='top'> "  .$prod ->name.' '.$prod ->description. ' '.$prod ->price."</td>";
                                        echo "</tr>";
                                        echo '<input type="hidden" name="desc'.$proId.'" id="desc'.$proId.'" value="'.$prod ->name.'">';
                                        echo '<input type="hidden" name="cost'.$proId.'" id="cost'.$proId.'" value="'.$prod ->price.'">';
                                        echo '<input type="hidden" name="proId'.$proId.'" id="proId'.$proId.'" value="'.$prod->productsid.'">';
                                        echo "<td id='geartabletd' valign='top' rowspan='2'><input type='submit' name = 'submit' value ='Add to Cart'></td>";
                                        echo "</table>";
                                        $_SESSION['proId'.$proId] = $proId;
                                        $proId = $proId + 1;
                                        $_SESSION['result'] = $proId;

                                        echo '</form>';
                                      
                                    
                                    }
			?>
            