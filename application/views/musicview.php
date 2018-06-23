				<div class="colright" style="overflow-y: scroll;">	
					<header>
						<h1>JavaJam Coffee House</h1>
					</header>
				<!-- <header><h1>JavaJam Coffee House</h1></header> -->
				<img src="<?php echo base_url();?>images\heroguitar.jpg" alt="heroguitar" width="100%" height="150px">
						<h2>Music at JavaJam</h2>
							<p id="p_size">The first Friday night each month at JavaJam is a special night. Join us from 8pm to 11pm for some music you won't
							want to miss!
							</p>
				<?php
					$month='';
					foreach($performers as $i)
					{		
						if($month== $i ->Month_Year){
							
								echo '<table id="tab">';
								echo '<td id="monthdesc">';
									
								echo " <img src=".$i ->musician_image_url." width='50px' height='50px'></td>
								<td >".' ' .$i ->name.' '.$i ->Description."</td>
								</tr>";
								echo "</table>";
								$month=$i ->Month_Year;
						}
						else{
							echo '<p id="month"><strong>'.$i ->Month_Year.'</strong></p>';
								echo '<table id="tab">';
								echo '<td id="monthdesc">';
									
								echo " <img src=".$i ->musician_image_url." width='50px' height='50px'></td>
								<td >".' ' .$i ->name.' '.$i ->Description."</td>
								</tr>";
								echo "</table>";
								$month=$i ->Month_Year;
						}

					}

				?>