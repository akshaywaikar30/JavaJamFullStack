	<!-- 				<script src="<?php echo base_url();?>js/jobs.js">

	</script> -->
					<div class="colright">	
						<header>
							<h1>JavaJam Coffee House</h1>
						</header>
						<div id="natural"></div>
						<h2>Jobs at JavaJam</h2>
						<p id="p_size1">Want to work at JavaJam? Fill out the form below to start your application. Required fields are marked with an astrisk (*).</p><br>
						
							<?php
								if($this->uri->segment(2)=="inserted"){
									echo'<p>Data Inserted</p>';
								}
									echo form_open('jobs/form_validation');

                            echo '<table cellpadding="5" id="tab">';
                            echo '<tr>';
                             echo "<td class='name'>" .form_label('Name:') . "</td>";
                              
                                $data_name = array('name'=>'name', 'placeholder'=>'Please Enter Name');
                                echo "<td class='contentalign'>" .form_input($data_name). "</td>";
                                
                                echo form_error('name');
                            echo "</tr>";

                            echo "<tr class='name'>";
                                echo "<td>" .form_label('Email:'). "</td>";
                               
                                $data_email = array('name'=>'email', 'placeholder'=>'xyz@abc.com');
                                echo "<td class='contentalign'>".form_input($data_email)."</td>";
                                
                                echo form_error('email');
                            echo "</tr>";
                           
                            echo "<tr class='name'>";
                                echo "<td>" .form_label('Experience:'). "</td>";
                               
                                $data_exp = array('name'=>'experience', 'placeholder'=>'Please enter experience');
                                echo "<td class='contentalign'>".form_input($data_exp)."</td>";
                                echo form_error('experience');
                            echo "</tr>";

                            echo "<tr>";
								echo '<td><input type="submit" name="submit" value="Apply Now"></td>';
							echo "</tr> </table>";
							 echo form_close();
								
							?>
					</div>
				</div>
				

