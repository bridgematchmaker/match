<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='index.php'</script>");

include("../connect.php");
///////////////////////////////Проверка статуса мачмеккера////////////////////////////
$zapros_match = "SELECT * FROM matchmakers WHERE login='".$_SESSION['login_match']."'";
$requirest_match = mysql_query($zapros_match);
while($row_match = mysql_fetch_array($requirest_match)) { $status_match = $row_match['status']; }
if($status_match == "2") { echo("<script>alert('Аккаунт заблокирован');</script><script>javascript:window.location='index.php?logout'</script>");}
//////////////////////////////////////////////////////////////////////////////////////


?>
<html>
<head>
	<meta charset="utf-8">
	<title>Добавление девушки в базу</title>
	<link rel="stylesheet" href="./css/bootstrap.min.css" />
	<link rel="stylesheet" href="./css/font-awesome.min.css" />
	<link rel="stylesheet" href="./css/bootstrap-datetimepicker.min.css" />
	<script src="./js/jquery-1.11.3.min.js"></script>
	<script src="./js/moment-with-locales.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>  
	<script src="./js/bootstrap-datetimepicker.min.js"></script>
	<script type="text/javascript">
    $(function () {
      $('#datetimepicker1').datetimepicker({
	    locale: '',
		stepping:10,
		format: 'YYYY-MM-DD'
	  });
      $('#datetimepicker2').datetimepicker({
	    locale: 'ru'
	  });
    });
  </script>
	
</head>



<?
$page_name = "girls";
include "header.php";
?>



<body>
	<div class="container" style="margin-top:40px;">
	<div class="col-lg-6 col-md-6 col-sm-9 col-xs-12">
		<form action="./function/girl_add_end.php" method="POST" role="form">
				<input name="login_match" type="hidden" value="<? echo $_SESSION['login_match']; ?>">
				
				<div class="form-group">
					<label>First name *</label>
					<input name="first_name" type="text" class="form-control rounded" required="required">
				</div>
				
				<div class="form-group">
					<label>Last name *</label>
					<input name="last_name" type="text" class="form-control rounded" required="required">
				</div>
				
								
				<div class="form-group">
					<label>Country *</label>
					 <select name="country" class="form-control" required="required">
						<option value=""></option> 
						<option value="Ukraine">Ukraine</option> 
						<option value="Belarus">Belarus</option> 
						<option value="Moldova, Republic of">Moldova, Republic of</option> 
						<option value="Russian Federation">Russian Federation</option> 
                    </select>
				</div>
				
				<div class="form-group">
					<label>City *</label>
					<input name="city" type="text" class="form-control rounded" required="required">
					</div>
								
				<div class="form-group">
					<label>Nationality</label>
					<select name="question1" class="form-control">
						  <option value=""></option>
						  <option value="belarusian">Belarusian</option> 
						  <option value="moldovan">Moldovan</option>
						  <option value="russian">Russian</option>	 
						  <option value="ukrainian">Ukrainian</option>		
					</select>
				</div>
								
				<div class="form-group">
					<label>Religion *</label>
					<select name="question2" class="form-control" required="required">
						<option value=""></option>
						<option value="Atheist">Atheist</option>
						<option value="Baptist">Baptist</option>
						<option value="Buddhist">Buddhist</option>
						<option value="Chatholic">Chatholic</option>
						<option value="Christian Sientist">Christian Sientist</option>
						<option value="Christian General">Christian General</option>
						<option value="Episcopal">Episcopal</option>
						<option value="Greek Orthodox">Greek Orthodox</option>
						<option value="Jewish">Jewish</option>
						<option value="Mormon">Mormon</option>
						<option value="Muslim">Muslim</option>
						<option value="Scientologist">Scientologist</option>
						<option value="Unitarian">Unitarian</option>
						<option value="Orthodox">Orthodox</option>
					</select>
				</div>
								
				<div class="form-group">
					<label>Age (date of birth) *</label>
					<div class="form-group">
						<div class="input-group" id="datetimepicker1">
							<input name="birthday" type="text" class="form-control" required="required" />
							<span class="input-group-addon">
								<span class="glyphicon glyphicon-calendar"></span>
							</span>
						</div>
					</div>
				</div>
				
				<div class="form-group">
					<label>Height *</label>
					<select name="question3" class="form-control" required="required">
						<option value=""></option>
						<option value="130">130(sm)</option>
						<option value="131">131(sm)</option>
						<option value="132">132(sm)</option>
						<option value="133">133(sm)</option>
						<option value="134">134(sm)</option>
						<option value="135">135(sm)</option>
						<option value="136">136(sm)</option>
						<option value="137">137(sm)</option>
						<option value="138">138(sm)</option>
						<option value="139">139(sm)</option>
						<option value="140">140(sm)</option>
						<option value="141">141(sm)</option>
						<option value="142">142(sm)</option>
						<option value="143">143(sm)</option>
						<option value="144">144(sm)</option>
						<option value="145">145(sm)</option>
						<option value="146">146(sm)</option>
						<option value="147">147(sm)</option>
						<option value="148">148(sm)</option>
						<option value="149">149(sm)</option>
						<option value="150">150(sm)</option>
						<option value="151">151(sm)</option>
						<option value="152">152(sm)</option>
						<option value="153">153(sm)</option>
						<option value="154">154(sm)</option>
						<option value="155">155(sm)</option>
						<option value="156">156(sm)</option>
						<option value="157">157(sm)</option>
						<option value="158">158(sm)</option>
						<option value="159">159(sm)</option>
						<option value="160">160(sm)</option>
						<option value="161">161(sm)</option>
						<option value="162">162(sm)</option>
						<option value="163">163(sm)</option>
						<option value="164">164(sm)</option>
						<option value="165">165(sm)</option>
						<option value="166">166(sm)</option>
						<option value="167">167(sm)</option>
						<option value="168">168(sm)</option>
						<option value="169">169(sm)</option>
						<option value="170">170(sm)</option>
						<option value="171">171(sm)</option>
						<option value="172">172(sm)</option>
						<option value="173">173(sm)</option>
						<option value="174">174(sm)</option>
						<option value="175">175(sm)</option>
						<option value="176">176(sm)</option>
						<option value="177">177(sm)</option>
						<option value="178">178(sm)</option>
						<option value="179">179(sm)</option>
						<option value="180">180(sm)</option>
						<option value="181">181(sm)</option>
						<option value="182">182(sm)</option>
						<option value="183">183(sm)</option>
						<option value="184">184(sm)</option>
						<option value="185">185(sm)</option>
						<option value="186">186(sm)</option>
						<option value="187">187(sm)</option>
						<option value="188">188(sm)</option>
						<option value="189">189(sm)</option>
						<option value="190">190(sm)</option>
						<option value="191">191(sm)</option>
						<option value="192">192(sm)</option>
						<option value="193">193(sm)</option>
						<option value="194">194(sm)</option>
						<option value="195">195(sm)</option>
						<option value="196">196(sm)</option>
						<option value="197">197(sm)</option>
						<option value="198">198(sm)</option>
						<option value="199">199(sm)</option>
						<option value="200">200(sm)</option>
					</select>
				</div>
				
				<div class="form-group">
					<label>Weight *</label>
					<select name="question4" class="form-control" required="required">
						<option value=""></option>
						<option value="45">45(kg)</option>
						<option value="46">46(kg)</option>
						<option value="47">47(kg)</option>
						<option value="48">48(kg)</option>
						<option value="49">49(kg)</option>
						<option value="50">50(kg)</option>
						<option value="51">51(kg)</option>
						<option value="52">52(kg)</option>
						<option value="53">53(kg)</option>
						<option value="54">54(kg)</option>
						<option value="55">55(kg)</option>
						<option value="56">56(kg)</option>
						<option value="57">57(kg)</option>
						<option value="58">58(kg)</option>
						<option value="59">59(kg)</option>
						<option value="60">60(kg)</option>
						<option value="61">61(kg)</option>
						<option value="62">62(kg)</option>
						<option value="63">63(kg)</option>
						<option value="64">64(kg)</option>
						<option value="65">65(kg)</option>
						<option value="66">66(kg)</option>
						<option value="67">67(kg)</option>
						<option value="68">68(kg)</option>
						<option value="69">69(kg)</option>
						<option value="70">70(kg)</option>
						<option value="71">71(kg)</option>
						<option value="72">72(kg)</option>
						<option value="73">73(kg)</option>
						<option value="74">74(kg)</option>
						<option value="75">75(kg)</option>
						<option value="76">76(kg)</option>
						<option value="77">77(kg)</option>
						<option value="78">78(kg)</option>
						<option value="79">79(kg)</option>
						<option value="80">80(kg)</option>
						<option value="81">81(kg)</option>
						<option value="82">82(kg)</option>
						<option value="83">83(kg)</option>
						<option value="84">84(kg)</option>
						<option value="85">85(kg)</option>
						<option value="86">86(kg)</option>
						<option value="87">87(kg)</option>
						<option value="88">88(kg)</option>
						<option value="89">89(kg)</option>
						<option value="90">90(kg)</option>
						<option value="91">91(kg)</option>
						<option value="92">92(kg)</option>
						<option value="93">93(kg)</option>
						<option value="94">94(kg)</option>
						<option value="95">95(kg)</option>
						<option value="96">96(kg)</option>
						<option value="97">97(kg)</option>
						<option value="98">98(kg)</option>
						<option value="99">99(kg)</option>
						<option value="100">100(kg)</option>
						<option value="101">101(kg)</option>
						<option value="102">102(kg)</option>
						<option value="103">103(kg)</option>
						<option value="104">104(kg)</option>
						<option value="105">105(kg)</option>
						<option value="106">106(kg)</option>
						<option value="107">107(kg)</option>
						<option value="108">108(kg)</option>
						<option value="109">109(kg)</option>
						<option value="110">110(kg)</option>
					</select>
				</div>
				
				<div class="form-group">
					<label>Body type *</label>
					<select name="question5" class="form-control" required="required">
						<option value=""></option>
						<option value="Thin">Thin</option>
						<option value="Athletic">Athletic</option>
						<option value="Sportive">Sportive</option>
						<option value="Overweight">Overweight</option>
					</select>
				</div>
				
				<div class="form-group">
					<label>Eye color *</label>
					<select name="question6" class="form-control" required="required">
						<option value=""></option>
						<option value="Black">Black</option>
						<option value="Light-brown">Light-brown</option>
						<option value="Grey-blue">Grey-blue</option>
						<option value="Blue">Blue</option>
						<option value="Grey">Grey</option>
						<option value="Green">Green</option>
						<option value="Brown">Brown</option>
						<option value="Hazel">Hazel</option>
						<option value="Green-blue">Green-blue</option>
						<option value="Green-brown">Green-brown</option>
					</select>
				</div>
				
				<div class="form-group">
					<label>Hair color *</label>
					<select name="question7" class="form-control" required="required">
						<option value=""></option>
						<option value="Black">Black</option>
						<option value="Ligh-brown">Ligh-brown</option>
						<option value="Blond">Blond</option>
						<option value="Red">Red</option>
						<option value="Golden">Golden</option>
						<option value="Chestbut">Chestbut</option>
						<option value="Brown">Brown</option>
						<option value="Hazel">Hazel</option>
					</select>
				</div>
				
				<div class="form-group">
					<label>Education *</label>
					<select name="question8" class="form-control" required="required">
						<option value=""></option>
						<option value="None">None</option>
						<option value="Primary school">Primary school</option>
						<option value="High school">High school</option>
						<option value="Collage">Collage</option>
						<option value="University Degree">University Degree</option>
					</select>
				</div>
				
				<div class="form-group">
					<label>Attitude to smoking, alcohol, drugs *</label>
					<select name="question9" class="form-control" required="required">
						<option value=""></option>
						<option value="Negative">Negative</option>
						<option value="Positive">Positive</option>
						<option value="Don't know">Don't know</option>
					</select>
				</div>
				
				<div class="form-group">
					<label>Marital status *</label>
					<input name="question10" type="text" class="form-control rounded" required="required">
				</div>
				
				<div class="form-group">
					<label>What is your native language? *</label>
					<select class="form-control" name="question11" required="required">
						<option value=""></option>
						<option value="English">English</option> 
						<option value="Italian">Italian</option>
						<option value="Spanish">Spanish</option>
						<option value="German">German</option>
						<option value="French">French</option>
						<option value="Russian">Russian</option>
						<option value="Ukrainian">Ukrainian</option>
					</select>
				</div>
				
				<div class="form-group">
					<label>What languages can you speak? *</label>
					<input name="question12" type="text" class="form-control rounded" required="required">
				</div>
				
				<div class="form-group">
					<label>Have children *</label>
					<input name="question13" type="text" class="form-control rounded" required="required">
				</div>
				
				<div class="form-group">
					<label>My character traits *</label>
					<input name="question14" type="text" class="form-control rounded" required="required">
				</div>
				
				<div class="form-group">
					<label>What do I expect from the search here? *</label>
					<input name="question15" type="text" class="form-control rounded" required="required">
				</div>
				
				<div class="form-group">
					<label>Profession</label>
					<input name="question16" type="text" class="form-control rounded">
				</div>
				
				<div class="form-group">
					<label>Occupation *</label>
					<input name="question17" type="text" class="form-control rounded" required="required">
				</div>
				
				<div class="form-group">
					<label>Which countries did you visit?</label>
					<input name="question18" type="text" class="form-control rounded">
				</div>
				
				<div class="form-group">
					<label>What countries would you like to visit?</label>
					<input name="question19" type="text" class="form-control rounded">
				</div>
				
				<div class="form-group">
					<label>Write briefly about yourself, about your lifestyle, your likes and dislikes</label>
					<input name="question20" type="text" class="form-control rounded">
				</div>
				
				<div class="form-group">
					<label>What are your hobbies and interests? *</label>
					<input name="question21" type="text" class="form-control rounded" required="required">
				</div>
				
				<div class="form-group">
					<label>Do you want children in a new relation? *</label>
					<select name="question22" class="form-control" required="required">
						<option value=""></option>					
						<option value="Yes">Yes</option>
                        <option value="No">No</option>
						<option value="Doesn't matter">Doesn't matter</option>
					</select>
				</div>
				
				<div class="form-group">
					<label>What country I'd dont like to meet my man from? *</label>
					<input name="question23" type="text" class="form-control rounded" required="required">
				</div>
				
				<div class="form-group">
					<label>Describe your perfect morning (you are a night owl or an early bird?)</label>
					<input name="question24" type="text" class="form-control rounded">
				</div>
				
				<div class="form-group">
					<label>Describe your desired future (goals, lifestyle, relationships in the family) *</label>
					<input name="question25" type="text" class="form-control rounded" required="required">
				</div>
				
				<div class="form-group">
					<label>Attitude to pets</label>
					<input name="question26" type="text" class="form-control rounded">
				</div>
				
				<div class="form-group">
					<label>What could you forgive and what can not?</label>
					<input name="question27" type="text" class="form-control rounded">
				</div>
				
				<div class="form-group">
					<label>Why did you decide to choose an online dating site for your search?</label>
					<input name="question28" type="text" class="form-control rounded">
				</div>
				
				<div class="form-group">
					<label>Why do you think that you haven’t found a suitable partner yet?</label>
					<input name="question29" type="text" class="form-control rounded">
				</div>
				
				<hr><h3>Search criteria for your man</h3><hr>
				
				<div class="form-group">
					<label>Age Range *</label>
					<select name="question30" class="form-control" required="required">
						<option value="" ></option>
						<option value="18-25">18-25</option>
						<option value="26-35">26-35</option>
						<option value="36-45">36-45</option>
						<option value="46-55">46-55</option>
						<option value="56-65">56-65</option>
					</select>
				</div>
				
				<div class="form-group">
					<label>Country</label>
					<select name="question31" class="form-control">
						<option value="" ></option>
						<option value="United States">United States</option> 
						<option value="United Kingdom">United Kingdom</option> 
						<option value="Afghanistan">Afghanistan</option> 
						<option value="Albania">Albania</option> 
						<option value="Algeria">Algeria</option> 
						<option value="American Samoa">American Samoa</option> 
						<option value="Andorra">Andorra</option> 
						<option value="Angola">Angola</option> 
						<option value="Anguilla">Anguilla</option> 
						<option value="Antarctica">Antarctica</option> 
						<option value="Antigua and Barbuda">Antigua and Barbuda</option> 
						<option value="Argentina">Argentina</option> 
						<option value="Armenia">Armenia</option> 
						<option value="Aruba">Aruba</option> 
						<option value="Australia">Australia</option> 
						<option value="Austria">Austria</option> 
						<option value="Azerbaijan">Azerbaijan</option> 
						<option value="Bahamas">Bahamas</option> 
						<option value="Bahrain">Bahrain</option> 
						<option value="Bangladesh">Bangladesh</option> 
						<option value="Barbados">Barbados</option> 
						<option value="Belarus">Belarus</option> 
						<option value="Belgium">Belgium</option> 
						<option value="Belize">Belize</option> 
						<option value="Benin">Benin</option> 
						<option value="Bermuda">Bermuda</option> 
						<option value="Bhutan">Bhutan</option> 
						<option value="Bolivia">Bolivia</option> 
						<option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option> 
						<option value="Botswana">Botswana</option> 
						<option value="Bouvet Island">Bouvet Island</option> 
						<option value="Brazil">Brazil</option> 
						<option value="Brunei Darussalam">Brunei Darussalam</option> 
						<option value="Bulgaria">Bulgaria</option> 
						<option value="Burkina Faso">Burkina Faso</option> 
						<option value="Burundi">Burundi</option> 
						<option value="Cambodia">Cambodia</option> 
						<option value="Cameroon">Cameroon</option> 
						<option value="Canada">Canada</option> 
						<option value="Cape Verde">Cape Verde</option> 
						<option value="Cayman Islands">Cayman Islands</option> 
						<option value="Central African Republic">Central African Republic</option> 
						<option value="Chad">Chad</option> 
						<option value="Chile">Chile</option> 
						<option value="China">China</option> 
						<option value="Christmas Island">Christmas Island</option> 
						<option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option> 
						<option value="Colombia">Colombia</option> 
						<option value="Comoros">Comoros</option> 
						<option value="Congo">Congo</option> 
						<option value="Cook Islands">Cook Islands</option> 
						<option value="Costa Rica">Costa Rica</option> 
						<option value="Cote D'ivoire">Cote D'ivoire</option> 
						<option value="Croatia">Croatia</option> 
						<option value="Cuba">Cuba</option> 
						<option value="Cyprus">Cyprus</option> 
						<option value="Czech Republic">Czech Republic</option> 
						<option value="Denmark">Denmark</option> 
						<option value="Djibouti">Djibouti</option> 
						<option value="Dominica">Dominica</option> 
						<option value="Dominican Republic">Dominican Republic</option> 
						<option value="Ecuador">Ecuador</option> 
						<option value="Egypt">Egypt</option> 
						<option value="El Salvador">El Salvador</option> 
						<option value="Equatorial Guinea">Equatorial Guinea</option> 
						<option value="Eritrea">Eritrea</option> 
						<option value="Estonia">Estonia</option> 
						<option value="Ethiopia">Ethiopia</option> 											
						<option value="Faroe Islands">Faroe Islands</option> 
						<option value="Fiji">Fiji</option> 
						<option value="Finland">Finland</option> 
						<option value="France">France</option> 
						<option value="French Guiana">French Guiana</option> 
						<option value="French Polynesia">French Polynesia</option> 
						<option value="Gabon">Gabon</option> 
						<option value="Gambia">Gambia</option> 
						<option value="Georgia">Georgia</option> 
						<option value="Germany">Germany</option> 
						<option value="Ghana">Ghana</option> 
						<option value="Gibraltar">Gibraltar</option> 
						<option value="Greece">Greece</option> 
						<option value="Greenland">Greenland</option> 
						<option value="Grenada">Grenada</option> 
						<option value="Guadeloupe">Guadeloupe</option> 
						<option value="Guam">Guam</option> 
						<option value="Guatemala">Guatemala</option> 
						<option value="Guinea">Guinea</option> 
						<option value="Guinea-bissau">Guinea-bissau</option> 
						<option value="Guyana">Guyana</option> 
						<option value="Haiti">Haiti</option> 
						<option value="Honduras">Honduras</option> 
						<option value="Hong Kong">Hong Kong</option> 
						<option value="Hungary">Hungary</option> 
						<option value="Iceland">Iceland</option> 
						<option value="India">India</option> 
						<option value="Indonesia">Indonesia</option> 
						<option value="Iran, Islamic Republic of">Iran, Islamic Republic of</option> 
						<option value="Iraq">Iraq</option> 
						<option value="Ireland">Ireland</option> 
						<option value="Israel">Israel</option> 
						<option value="Italy">Italy</option> 
						<option value="Jamaica">Jamaica</option> 
						<option value="Japan">Japan</option> 
						<option value="Jordan">Jordan</option> 
						<option value="Kazakhstan">Kazakhstan</option> 
						<option value="Kenya">Kenya</option> 
						<option value="Kiribati">Kiribati</option> 
						<option value="Korea, Democratic">Korea</option> 
						<option value="Kuwait">Kuwait</option> 
						<option value="Kyrgyzstan">Kyrgyzstan</option> 
						<option value="Lao People's Democratic Republic">Lao People's Democratic Republic</option> 
						<option value="Latvia">Latvia</option> 
						<option value="Lebanon">Lebanon</option> 
						<option value="Lesotho">Lesotho</option> 
						<option value="Liberia">Liberia</option> 
						<option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option> 
						<option value="Liechtenstein">Liechtenstein</option> 
						<option value="Lithuania">Lithuania</option> 
						<option value="Luxembourg">Luxembourg</option> 
						<option value="Macao">Macao</option> 
						<option value="Madagascar">Madagascar</option> 
						<option value="Malawi">Malawi</option> 
						<option value="Malaysia">Malaysia</option> 
						<option value="Maldives">Maldives</option> 
						<option value="Mali">Mali</option> 
						<option value="Malta">Malta</option> 
						<option value="Marshall Islands">Marshall Islands</option> 
						<option value="Martinique">Martinique</option> 
						<option value="Mauritania">Mauritania</option> 
						<option value="Mauritius">Mauritius</option> 
						<option value="Mayotte">Mayotte</option> 
						<option value="Mexico">Mexico</option> 
						<option value="Moldova, Republic of">Moldova, Republic of</option> 
						<option value="Monaco">Monaco</option> 
						<option value="Mongolia">Mongolia</option> 
						<option value="Montserrat">Montserrat</option> 
						<option value="Morocco">Morocco</option> 
						<option value="Mozambique">Mozambique</option> 
						<option value="Myanmar">Myanmar</option> 
						<option value="Namibia">Namibia</option> 
						<option value="Nauru">Nauru</option> 
						<option value="Nepal">Nepal</option> 
						<option value="Netherlands">Netherlands</option> 
						<option value="Netherlands Antilles">Netherlands Antilles</option> 
						<option value="New Caledonia">New Caledonia</option> 
						<option value="New Zealand">New Zealand</option> 
						<option value="Nicaragua">Nicaragua</option> 
						<option value="Niger">Niger</option> 
						<option value="Nigeria">Nigeria</option> 
						<option value="Niue">Niue</option> 
						<option value="Norfolk Island">Norfolk Island</option> 
						<option value="Northern Mariana Islands">Northern Mariana Islands</option> 
						<option value="Norway">Norway</option> 
						<option value="Oman">Oman</option> 
						<option value="Pakistan">Pakistan</option> 
						<option value="Palau">Palau</option> 
						<option value="Panama">Panama</option> 
						<option value="Papua New Guinea">Papua New Guinea</option> 
						<option value="Paraguay">Paraguay</option> 
						<option value="Peru">Peru</option> 
						<option value="Philippines">Philippines</option> 
						<option value="Pitcairn">Pitcairn</option> 
						<option value="Poland">Poland</option> 
						<option value="Portugal">Portugal</option> 
						<option value="Puerto Rico">Puerto Rico</option> 
						<option value="Qatar">Qatar</option> 
						<option value="Reunion">Reunion</option> 
						<option value="Romania">Romania</option> 
						<option value="Russian Federation">Russian Federation</option> 
						<option value="Rwanda">Rwanda</option> 
						<option value="Saint Helena">Saint Helena</option> 
						<option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option> 
						<option value="Saint Lucia">Saint Lucia</option> 
						<option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option> 
						<option value="Samoa">Samoa</option> 
						<option value="San Marino">San Marino</option> 
						<option value="Sao Tome and Principe">Sao Tome and Principe</option> 
						<option value="Saudi Arabia">Saudi Arabia</option> 
						<option value="Senegal">Senegal</option> 
						<option value="Serbia and Montenegro">Serbia and Montenegro</option> 
						<option value="Seychelles">Seychelles</option> 
						<option value="Sierra Leone">Sierra Leone</option> 
						<option value="Singapore">Singapore</option> 
						<option value="Slovakia">Slovakia</option> 
						<option value="Slovenia">Slovenia</option> 
						<option value="Solomon Islands">Solomon Islands</option> 
						<option value="Somalia">Somalia</option> 
						<option value="South Africa">South Africa</option> 
						<option value="Spain">Spain</option> 
						<option value="Sri Lanka">Sri Lanka</option> 
						<option value="Sudan">Sudan</option> 
						<option value="Suriname">Suriname</option> 
						<option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option> 
						<option value="Swaziland">Swaziland</option> 
						<option value="Sweden">Sweden</option> 
						<option value="Switzerland">Switzerland</option> 
						<option value="Syrian Arab Republic">Syrian Arab Republic</option> 
						<option value="Tajikistan">Tajikistan</option> 
						<option value="Thailand">Thailand</option> 
						<option value="Timor-leste">Timor-leste</option> 
						<option value="Togo">Togo</option> 
						<option value="Tokelau">Tokelau</option> 
						<option value="Tonga">Tonga</option> 
						<option value="Trinidad and Tobago">Trinidad and Tobago</option> 
						<option value="Tunisia">Tunisia</option> 
						<option value="Turkey">Turkey</option> 
						<option value="Turkmenistan">Turkmenistan</option> 
						<option value="Turks and Caicos Islands">Turks and Caicos Islands</option> 
						<option value="Tuvalu">Tuvalu</option> 
						<option value="Uganda">Uganda</option> 
						<option value="Ukraine">Ukraine</option> 
						<option value="United Arab Emirates">United Arab Emirates</option> 
						<option value="United Kingdom">United Kingdom</option> 
						<option value="United States">United States</option> 
						<option value="Uruguay">Uruguay</option> 
						<option value="Uzbekistan">Uzbekistan</option> 
						<option value="Vanuatu">Vanuatu</option> 
						<option value="Venezuela">Venezuela</option> 
						<option value="Viet Nam">Viet Nam</option> 
						<option value="Virgin Islands, British">Virgin Islands, British</option> 
						<option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option> 
						<option value="Wallis and Futuna">Wallis and Futuna</option> 
						<option value="Western Sahara">Western Sahara</option> 
						<option value="Yemen">Yemen</option> 
						<option value="Zambia">Zambia</option> 
						<option value="Zimbabwe">Zimbabwe</option>
					</select>
				</div>
				
				<div class="form-group">
					<label>Height *</label>
					 <select name="question32" class="form-control" required="required">
						<option value=""></option>
						<option value="4 feet 0 inches (121.92 cm)">4 feet 0 inches (121.92 cm)</option>
						<option value="4 feet 1 inches (124.46 cm)">4 feet 1 inches (124.46 cm)</option>
						<option value="4 feet 2 inches (127.00 cm)">4 feet 2 inches (127.00 cm)</option>
						<option value="4 feet 3 inches (129.54 cm)">4 feet 3 inches (129.54 cm)</option>
						<option value="4 feet 4 inches (132.08 cm)">4 feet 4 inches (132.08 cm)</option>
						<option value="4 feet 5 inches (134.62 cm)">4 feet 5 inches (134.62 cm)</option>
						<option value="4 feet 6 inches (137.16 cm)">4 feet 6 inches (137.16 cm)</option>
						<option value="4 feet 7 inches (139.70 cm)">4 feet 7 inches (139.70 cm)</option>
						<option value="4 feet 8 inches (142.24 cm)">4 feet 8 inches (142.24 cm)</option>
						<option value="4 feet 9 inches (144.78 cm)">4 feet 9 inches (144.78 cm)</option>
						<option value="4 feet 10 inches (147.32 cm)">4 feet 10 inches (147.32 cm)</option>
						<option value="4 feet 11 inches (149.86 cm)">4 feet 11 inches (149.86 cm)</option>
						<option value="5 feet 0 inches (152.40 cm)">5 feet 0 inches (152.40 cm)</option>
						<option value="5 feet 1 inches (154.94 cm)">5 feet 1 inches (154.94 cm)</option>
						<option value="5 feet 2 inches (157.48 cm)">5 feet 2 inches (157.48 cm)</option>
						<option value="5 feet 3 inches (160.02 cm)">5 feet 3 inches (160.02 cm)</option>
						<option value="5 feet 4 inches (162.56 cm)">5 feet 4 inches (162.56 cm)</option>
						<option value="5 feet 5 inches (165.10 cm)">5 feet 5 inches (165.10 cm)</option>
						<option value="5 feet 6 inches (167.64 cm)">5 feet 6 inches (167.64 cm)</option>
						<option value="5 feet 7 inches (170.18 cm)">5 feet 7 inches (170.18 cm)</option>
						<option value="5 feet 8 inches (172.72 cm)">5 feet 8 inches (172.72 cm)</option>
						<option value="5 feet 9 inches (175.26 cm)">5 feet 9 inches (175.26 cm)</option>
						<option value="5 feet 10 inches (177.80 cm)">5 feet 10 inches (177.80 cm)</option>
						<option value="5 feet 10 inches (177.80 cm)">5 feet 10 inches (177.80 cm)</option>
						<option value="6 feet 0 inches (182.88 cm)">6 feet 0 inches (182.88 cm)</option>
						<option value="6 feet 1 inches (185.42 cm)">6 feet 1 inches (185.42 cm)</option>
						<option value="6 feet 2 inches (187.96 cm)">6 feet 2 inches (187.96 cm)</option>
						<option value="6 feet 3 inches (190.50 cm)">6 feet 3 inches (190.50 cm)</option>
						<option value="6 feet 4 inches (193.04 cm)">6 feet 4 inches (193.04 cm)</option>
						<option value="6 feet 5 inches (195.58 cm)">6 feet 5 inches (195.58 cm)</option>
						<option value="6 feet 6 inches (198.12 cm)">6 feet 6 inches (198.12 cm)</option>
						<option value="6 feet 7 inches (200.66 cm)">6 feet 7 inches (200.66 cm)</option>
						<option value="6 feet 8 inches (203.20 cm)">6 feet 8 inches (203.20 cm)</option>				
					</select>
				</div>
				
				<div class="form-group">
					<label>Weight *</label>
					<select name="question33" class="form-control" required="required">
						<option value=""></option>
						<option value="90 lbs (40.8 kg)">90 lbs (40.8 kg)</option>
						<option value="91 lbs (41.3 kg)">91 lbs (41.3 kg)</option>
						<option value="92 lbs (41.7 kg)">92 lbs (41.7 kg)</option>
						<option value="93 lbs (42.2 kg)">93 lbs (42.2 kg)</option>
						<option value="94 lbs (42.6 kg)">94 lbs (42.6 kg)</option>
						<option value="95 lbs (43.1 kg)">95 lbs (43.1 kg)</option>
						<option value="96 lbs (43.5 kg)">96 lbs (43.5 kg)</option>
						<option value="97 lbs (44 kg)">97 lbs (44 kg)</option>
						<option value="98 lbs (44.5 kg)">98 lbs (44.5 kg)</option>
						<option value="99 lbs (44.9 kg)">99 lbs (44.9 kg)</option>
						<option value="100 lbs (45.4 kg)">100 lbs (45.4 kg)</option>
						<option value="101 lbs (45.8 kg)">101 lbs (45.8 kg)</option>
						<option value="102 lbs (46.3 kg)">102 lbs (46.3 kg)</option>
						<option value="103 lbs (46.7 kg)">103 lbs (46.7 kg)</option>
						<option value="104 lbs (47.2 kg)">104 lbs (47.2 kg)</option>
						<option value="105 lbs (47.6 kg)">105 lbs (47.6 kg)</option>
						<option value="106 lbs (48.1 kg)">106 lbs (48.1 kg)</option>
						<option value="107 lbs (48.5 kg)">107 lbs (48.5 kg)</option>
						<option value="108 lbs (49 kg)">108 lbs (49 kg)</option>
						<option value="109 lbs (49.4 kg)">109 lbs (49.4 kg)</option>
						<option value="110 lbs (49.9 kg)">110 lbs (49.9 kg)</option>
						<option value="111 lbs (50.3 kg)">111 lbs (50.3 kg)</option>
						<option value="112 lbs (50.8 kg)">112 lbs (50.8 kg)</option>
						<option value="113 lbs (51.3 kg)">113 lbs (51.3 kg)</option>
						<option value="114 lbs (51.7 kg)">114 lbs (51.7 kg)</option>
						<option value="115 lbs (52.2 kg)">115 lbs (52.2 kg)</option>
						<option value="116 lbs (52.6 kg)">116 lbs (52.6 kg)</option>
						<option value="117 lbs (53.1 kg)">117 lbs (53.1 kg)</option>
						<option value="118 lbs (53.5 kg)">118 lbs (53.5 kg)</option>
						<option value="119 lbs (54 kg)">119 lbs (54 kg)</option>
						<option value="120 lbs (54.4 kg)">120 lbs (54.4 kg)</option>
						<option value="121 lbs (54.9 kg)">121 lbs (54.9 kg)</option>
						<option value="122 lbs (55.3 kg)">122 lbs (55.3 kg)</option>
						<option value="123 lbs (55.8 kg)">123 lbs (55.8 kg)</option>
						<option value="124 lbs (56.2 kg)">124 lbs (56.2 kg)</option>
						<option value="125 lbs (56.7 kg)">125 lbs (56.7 kg)</option>
						<option value="126 lbs (57.2 kg)">126 lbs (57.2 kg)</option>
						<option value="127 lbs (57.6 kg)">127 lbs (57.6 kg)</option>
						<option value="128 lbs (58.1 kg)">128 lbs (58.1 kg)</option>
						<option value="129 lbs (58.5 kg)">129 lbs (58.5 kg)</option>
						<option value="130 lbs (59 kg)">130 lbs (59 kg)</option>
						<option value="131 lbs (59.4 kg)">131 lbs (59.4 kg)</option>
						<option value="132 lbs (59.9 kg)">132 lbs (59.9 kg)</option>
						<option value="133 lbs (60.3 kg)">133 lbs (60.3 kg)</option>
						<option value="134 lbs (60.8 kg)">134 lbs (60.8 kg)</option>
						<option value="135 lbs (61.2 kg)">135 lbs (61.2 kg)</option>
						<option value="136 lbs (61.7 kg)">136 lbs (61.7 kg)</option>
						<option value="137 lbs (62.1 kg)">137 lbs (62.1 kg)</option>
						<option value="138 lbs (62.6 kg)">138 lbs (62.6 kg)</option>
						<option value="139 lbs (63.1 kg)">139 lbs (63.1 kg)</option>
						<option value="140 lbs (63.5 kg)">140 lbs (63.5 kg)</option>
						<option value="141 lbs (64 kg)">141 lbs (64 kg)</option>
						<option value="142 lbs (64.4 kg)">142 lbs (64.4 kg)</option>
						<option value="143 lbs (64.9 kg)">143 lbs (64.9 kg)</option>
						<option value="144 lbs (65.3 kg)">144 lbs (65.3 kg)</option>
						<option value="145 lbs (65.8 kg)">145 lbs (65.8 kg)</option>
						<option value="146 lbs (66.2 kg)">146 lbs (66.2 kg)</option>
						<option value="147 lbs (66.7 kg)">147 lbs (66.7 kg)</option>
						<option value="148 lbs (67.1 kg)">148 lbs (67.1 kg)</option>
						<option value="149 lbs (67.6 kg)">149 lbs (67.6 kg)</option>
						<option value="150 lbs (68 kg)">150 lbs (68 kg)</option>
						<option value="151 lbs (68.5 kg)">151 lbs (68.5 kg)</option>
						<option value="152 lbs (68.9 kg)">152 lbs (68.9 kg)</option>
						<option value="153 lbs (69.4 kg)">153 lbs (69.4 kg)</option>
						<option value="154 lbs (69.9 kg)">154 lbs (69.9 kg)</option>
						<option value="155 lbs (70.3 kg)">155 lbs (70.3 kg)</option>
						<option value="156 lbs (70.8 kg)">156 lbs (70.8 kg)</option>
						<option value="157 lbs (71.2 kg)">157 lbs (71.2 kg)</option>
						<option value="158 lbs (71.7 kg)">158 lbs (71.7 kg)</option>
						<option value="159 lbs (72.1 kg)">159 lbs (72.1 kg)</option>
						<option value="160 lbs (72.6 kg)">160 lbs (72.6 kg)</option>
						<option value="161 lbs (73 kg)">161 lbs (73 kg)</option>
						<option value="162 lbs (73.5 kg)">162 lbs (73.5 kg)</option>
						<option value="163 lbs (73.9 kg)">163 lbs (73.9 kg)</option>
						<option value="164 lbs (74.4 kg)">164 lbs (74.4 kg)</option>
						<option value="165 lbs (74.8 kg)">165 lbs (74.8 kg)</option>
						<option value="166 lbs (75.3 kg)">166 lbs (75.3 kg)</option>
						<option value="167 lbs (75.8 kg)">167 lbs (75.8 kg)</option>
						<option value="168 lbs (76.2 kg)">168 lbs (76.2 kg)</option>
						<option value="169 lbs (76.7 kg)">169 lbs (76.7 kg)</option>
						<option value="170 lbs (77.1 kg)">170 lbs (77.1 kg)</option>
						<option value="171 lbs (77.6 kg)">171 lbs (77.6 kg)</option>
						<option value="172 lbs (78 kg)">172 lbs (78 kg)</option>
						<option value="173 lbs (78.5 kg)">173 lbs (78.5 kg)</option>
						<option value="174 lbs (78.9 kg)">174 lbs (78.9 kg)</option>
						<option value="175 lbs (79.4 kg)">175 lbs (79.4 kg)</option>
						<option value="176 lbs (79.8 kg)">176 lbs (79.8 kg)</option>
						<option value="177 lbs (80.3 kg)">177 lbs (80.3 kg)</option>
						<option value="178 lbs (80.7 kg)">178 lbs (80.7 kg)</option>
						<option value="179 lbs (81.2 kg)">179 lbs (81.2 kg)</option>
						<option value="180 lbs (81.6 kg)">180 lbs (81.6 kg)</option>
						<option value="181 lbs (82.1 kg)">181 lbs (82.1 kg)</option>
						<option value="182 lbs (82.6 kg)">182 lbs (82.6 kg)</option>
						<option value="183 lbs (83 kg)">183 lbs (83 kg)</option>
						<option value="184 lbs (83.5 kg)">184 lbs (83.5 kg)</option>
						<option value="185 lbs (83.9 kg)">185 lbs (83.9 kg)</option>
						<option value="186 lbs (84.4 kg)">186 lbs (84.4 kg)</option>
						<option value="187 lbs (84.8 kg)">187 lbs (84.8 kg)</option>
						<option value="188 lbs (85.3 kg)">188 lbs (85.3 kg)</option>
						<option value="189 lbs (85.7 kg)">189 lbs (85.7 kg)</option>
						<option value="190 lbs (86.2 kg)">190 lbs (86.2 kg)</option>
						<option value="191 lbs (86.6 kg)">191 lbs (86.6 kg)</option>
						<option value="192 lbs (87.1 kg)">192 lbs (87.1 kg)</option>
						<option value="193 lbs (87.5 kg)">193 lbs (87.5 kg)</option>
						<option value="194 lbs (88 kg)">194 lbs (88 kg)</option>
						<option value="195 lbs (88.5 kg)">195 lbs (88.5 kg)</option>
						<option value="196 lbs (88.9 kg)">196 lbs (88.9 kg)</option>
						<option value="197 lbs (89.4 kg)">197 lbs (89.4 kg)</option>
						<option value="198 lbs (89.8 kg)">198 lbs (89.8 kg)</option>
						<option value="199 lbs (90.3 kg)">199 lbs (90.3 kg)</option>
						<option value="200 lbs (90.7 kg)">200 lbs (90.7 kg)</option>
						<option value="201 lbs (91.2 kg)">201 lbs (91.2 kg)</option>
						<option value="202 lbs (91.6 kg)">202 lbs (91.6 kg)</option>
						<option value="203 lbs (92.1 kg)">203 lbs (92.1 kg)</option>
						<option value="204 lbs (92.5 kg)">204 lbs (92.5 kg)</option>
						<option value="205 lbs (93 kg)">205 lbs (93 kg)</option>
						<option value="206 lbs (93.4 kg)">206 lbs (93.4 kg)</option>
						<option value="207 lbs (93.9 kg)">207 lbs (93.9 kg)</option>
						<option value="208 lbs (94.3 kg)">208 lbs (94.3 kg)</option>
						<option value="209 lbs (94.8 kg)">209 lbs (94.8 kg)</option>
						<option value="210 lbs (95.3 kg)">210 lbs (95.3 kg)</option>
						<option value="211 lbs (95.7 kg)">211 lbs (95.7 kg)</option>
						<option value="212 lbs (96.2 kg)">212 lbs (96.2 kg)</option>
						<option value="213 lbs (96.6 kg)">213 lbs (96.6 kg)</option>
						<option value="214 lbs (97.1 kg)">214 lbs (97.1 kg)</option>
						<option value="215 lbs (97.5 kg)">215 lbs (97.5 kg)</option>
						<option value="216 lbs (98 kg)">216 lbs (98 kg)</option>
						<option value="217 lbs (98.4 kg)">217 lbs (98.4 kg)</option>
						<option value="218 lbs (98.9 kg)">218 lbs (98.9 kg)</option>
						<option value="219 lbs (99.3 kg)">219 lbs (99.3 kg)</option>
						<option value="220 lbs (99.8 kg)">220 lbs (99.8 kg)</option>
					</select>
				</div>
				
				<div class="form-group">
					<label>Eye color *</label>
					<select name="question34" class="form-control" required="required">
						<option value=""></option>
						<option value="Black">Black</option>
						<option value="Light-brown">Light-brown</option>
						<option value="Grey-blue">Grey-blue</option>
						<option value="Blue">Blue</option>
						<option value="Grey">Grey</option>
						<option value="Green">Green</option>
						<option value="Brown">Brown</option>
						<option value="Hazel">Hazel</option>
						<option value="Green-blue">Green-blue</option>
						<option value="Green-brown">Green-brown</option>
					</select>
				</div>
				
				<div class="form-group">
					<label>Hair color *</label>
					<select name="question35" class="form-control" required="required">
						<option value=""></option>
						<option value="Black">Black</option>
						<option value="Ligh-brown">Ligh-brown</option>
						<option value="Blond">Blond</option>
						<option value="Red">Red</option>
						<option value="Golden">Golden</option>
						<option value="Chestbut">Chestbut</option>
						<option value="Brown">Brown</option>
						<option value="Hazel">Hazel</option>
					</select>
				</div>
				
				<div class="form-group">
					<label>Nationality *</label>
					<select name="question36" class="form-control" required="required">
						  <option value=""></option>
						  <option value="afghan">Afghan</option>
						  <option value="albanian">Albanian</option>
						  <option value="algerian">Algerian</option>
						  <option value="american">American</option>
						  <option value="andorran">Andorran</option>
						  <option value="angolan">Angolan</option>
						  <option value="antiguans">Antiguans</option>
						  <option value="argentinean">Argentinean</option>
						  <option value="armenian">Armenian</option>
						  <option value="australian">Australian</option>
						  <option value="austrian">Austrian</option>
						  <option value="azerbaijani">Azerbaijani</option>
						  <option value="bahamian">Bahamian</option>
						  <option value="bahraini">Bahraini</option>
						  <option value="bangladeshi">Bangladeshi</option>
						  <option value="barbadian">Barbadian</option>
						  <option value="barbudans">Barbudans</option>
						  <option value="batswana">Batswana</option>
						  <option value="belarusian">Belarusian</option>
						  <option value="belgian">Belgian</option>
						  <option value="belizean">Belizean</option>
						  <option value="beninese">Beninese</option>
						  <option value="bhutanese">Bhutanese</option>
						  <option value="bolivian">Bolivian</option>
						  <option value="bosnian">Bosnian</option>
						  <option value="brazilian">Brazilian</option>
						  <option value="british">British</option>
						  <option value="bruneian">Bruneian</option>
						  <option value="bulgarian">Bulgarian</option>
						  <option value="burkinabe">Burkinabe</option>
						  <option value="burmese">Burmese</option>
						  <option value="burundian">Burundian</option>
						  <option value="cambodian">Cambodian</option>
						  <option value="cameroonian">Cameroonian</option>
						  <option value="canadian">Canadian</option>
						  <option value="cape verdean">Cape Verdean</option>
						  <option value="central african">Central African</option>
						  <option value="chadian">Chadian</option>
						  <option value="chilean">Chilean</option>
						  <option value="chinese">Chinese</option>
						  <option value="colombian">Colombian</option>
						  <option value="comoran">Comoran</option>
						  <option value="congolese">Congolese</option>
						  <option value="costa rican">Costa Rican</option>
						  <option value="croatian">Croatian</option>
						  <option value="cuban">Cuban</option>
						  <option value="cypriot">Cypriot</option>
						  <option value="czech">Czech</option>
						  <option value="danish">Danish</option>
						  <option value="djibouti">Djibouti</option>
						  <option value="dominican">Dominican</option>
						  <option value="dutch">Dutch</option>
						  <option value="east timorese">East Timorese</option>
						  <option value="ecuadorean">Ecuadorean</option>
						  <option value="egyptian">Egyptian</option>
						  <option value="emirian">Emirian</option>
						  <option value="equatorial guinean">Equatorial Guinean</option>
						  <option value="eritrean">Eritrean</option>
						  <option value="estonian">Estonian</option>
						  <option value="ethiopian">Ethiopian</option>
						  <option value="fijian">Fijian</option>
						  <option value="filipino">Filipino</option>
						  <option value="finnish">Finnish</option>
						  <option value="french">French</option>
						  <option value="gabonese">Gabonese</option>
						  <option value="gambian">Gambian</option>
						  <option value="georgian">Georgian</option>
						  <option value="german">German</option>
						  <option value="ghanaian">Ghanaian</option>
						  <option value="greek">Greek</option>
						  <option value="grenadian">Grenadian</option>
						  <option value="guatemalan">Guatemalan</option>
						  <option value="guinea-bissauan">Guinea-Bissauan</option>
						  <option value="guinean">Guinean</option>
						  <option value="guyanese">Guyanese</option>
						  <option value="haitian">Haitian</option>
						  <option value="herzegovinian">Herzegovinian</option>
						  <option value="honduran">Honduran</option>
						  <option value="hungarian">Hungarian</option>
						  <option value="icelander">Icelander</option>
						  <option value="indian">Indian</option>
						  <option value="indonesian">Indonesian</option>
						  <option value="iranian">Iranian</option>
						  <option value="iraqi">Iraqi</option>
						  <option value="irish">Irish</option>
						  <option value="israeli">Israeli</option>
						  <option value="italian">Italian</option>
						  <option value="ivorian">Ivorian</option>
						  <option value="jamaican">Jamaican</option>
						  <option value="japanese">Japanese</option>
						  <option value="jordanian">Jordanian</option>
						  <option value="kazakhstani">Kazakhstani</option>
						  <option value="kenyan">Kenyan</option>
						  <option value="kittian and nevisian">Kittian and Nevisian</option>
						  <option value="kuwaiti">Kuwaiti</option>
						  <option value="kyrgyz">Kyrgyz</option>
						  <option value="laotian">Laotian</option>
						  <option value="latvian">Latvian</option>
						  <option value="lebanese">Lebanese</option>
						  <option value="liberian">Liberian</option>
						  <option value="libyan">Libyan</option>
						  <option value="liechtensteiner">Liechtensteiner</option>
						  <option value="lithuanian">Lithuanian</option>
						  <option value="luxembourger">Luxembourger</option>
						  <option value="macedonian">Macedonian</option>
						  <option value="malagasy">Malagasy</option>
						  <option value="malawian">Malawian</option>
						  <option value="malaysian">Malaysian</option>
						  <option value="maldivan">Maldivan</option>
						  <option value="malian">Malian</option>
						  <option value="maltese">Maltese</option>
						  <option value="marshallese">Marshallese</option>
						  <option value="mauritanian">Mauritanian</option>
						  <option value="mauritian">Mauritian</option>
						  <option value="mexican">Mexican</option>
						  <option value="micronesian">Micronesian</option>
						  <option value="moldovan">Moldovan</option>
						  <option value="monacan">Monacan</option>
						  <option value="mongolian">Mongolian</option>
						  <option value="moroccan">Moroccan</option>
						  <option value="mosotho">Mosotho</option>
						  <option value="motswana">Motswana</option>
						  <option value="mozambican">Mozambican</option>
						  <option value="namibian">Namibian</option>
						  <option value="nauruan">Nauruan</option>
						  <option value="nepalese">Nepalese</option>
						  <option value="new zealander">New Zealander</option>
						  <option value="ni-vanuatu">Ni-Vanuatu</option>
						  <option value="nicaraguan">Nicaraguan</option>
						  <option value="nigerien">Nigerien</option>
						  <option value="north korean">North Korean</option>
						  <option value="northern irish">Northern Irish</option>
						  <option value="norwegian">Norwegian</option>
						  <option value="omani">Omani</option>
						  <option value="pakistani">Pakistani</option>
						  <option value="palauan">Palauan</option>
						  <option value="panamanian">Panamanian</option>
						  <option value="papua new guinean">Papua New Guinean</option>
						  <option value="paraguayan">Paraguayan</option>
						  <option value="peruvian">Peruvian</option>
						  <option value="polish">Polish</option>
						  <option value="portuguese">Portuguese</option>
						  <option value="qatari">Qatari</option>
						  <option value="romanian">Romanian</option>
						  <option value="russian">Russian</option>
						  <option value="rwandan">Rwandan</option>
						  <option value="saint lucian">Saint Lucian</option>
						  <option value="salvadoran">Salvadoran</option>
						  <option value="samoan">Samoan</option>
						  <option value="san marinese">San Marinese</option>
						  <option value="sao tomean">Sao Tomean</option>
						  <option value="saudi">Saudi</option>
						  <option value="scottish">Scottish</option>
						  <option value="senegalese">Senegalese</option>
						  <option value="serbian">Serbian</option>
						  <option value="seychellois">Seychellois</option>
						  <option value="sierra leonean">Sierra Leonean</option>
						  <option value="singaporean">Singaporean</option>
						  <option value="slovakian">Slovakian</option>
						  <option value="slovenian">Slovenian</option>
						  <option value="solomon islander">Solomon Islander</option>
						  <option value="somali">Somali</option>
						  <option value="south african">South African</option>
						  <option value="south korean">South Korean</option>
						  <option value="spanish">Spanish</option>
						  <option value="sri lankan">Sri Lankan</option>
						  <option value="sudanese">Sudanese</option>
						  <option value="surinamer">Surinamer</option>
						  <option value="swazi">Swazi</option>
						  <option value="swedish">Swedish</option>
						  <option value="swiss">Swiss</option>
						  <option value="syrian">Syrian</option>
						  <option value="taiwanese">Taiwanese</option>
						  <option value="tajik">Tajik</option>
						  <option value="tanzanian">Tanzanian</option>
						  <option value="thai">Thai</option>
						  <option value="togolese">Togolese</option>
						  <option value="tongan">Tongan</option>
						  <option value="trinidadian or tobagonian">Trinidadian or Tobagonian</option>
						  <option value="tunisian">Tunisian</option>
						  <option value="turkish">Turkish</option>
						  <option value="tuvaluan">Tuvaluan</option>
						  <option value="ugandan">Ugandan</option>
						  <option value="ukrainian">Ukrainian</option>
						  <option value="uruguayan">Uruguayan</option>
						  <option value="uzbekistani">Uzbekistani</option>
						  <option value="venezuelan">Venezuelan</option>
						  <option value="vietnamese">Vietnamese</option>
						  <option value="welsh">Welsh</option>
						  <option value="yemenite">Yemenite</option>
						  <option value="zambian">Zambian</option>
						  <option value="zimbabwean">Zimbabwean</option>
					</select>
				</div>
				
				<div class="form-group">
					<label>Religion *</label>
					<select name="question37" class="form-control" required="required">
						<option value=""></option>
						<option value="Atheist">Atheist</option>
						<option value="Baptist">Baptist</option>
						<option value="Buddhist">Buddhist</option>
						<option value="Chatholic">Chatholic</option>
						<option value="Christian Sientist">Christian Sientist</option>
						<option value="Christian General">Christian General</option>
						<option value="Episcopal">Episcopal</option>
						<option value="Greek Orthodox">Greek Orthodox</option>
						<option value="Jewish">Jewish</option>
						<option value="Mormon">Mormon</option>
						<option value="Muslim">Muslim</option>
						<option value="Scientologist">Scientologist</option>
						<option value="Unitarian">Unitarian</option>
						<option value="Orthodox">Orthodox</option>
					</select>
				</div>
				
				<div class="form-group">
					<label>Have children *</label>
					<select name="question38" class="form-control" required="required">
						<option value=""></option>					
						<option value="Yes">Yes</option>
                        <option value="No">No</option>
						<option value="Doesn't matter">Doesn't matter</option>
					</select>
				</div>
				
				<div class="form-group">
					<label>Desired traits of character in a man *</label>
					<input name="question39" type="text" class="form-control rounded" required="required">
				</div>
				
				<div class="form-group">
					<label>Character traits that you can not be tolerate with *</label>
					<input name="question40" type="text" class="form-control rounded" required="required">
				</div>
				
				<div class="form-group">
					<label>Do you want the man to know your native language or another language in which you can communicate?</label>
					<select name="question41" class="form-control">
						<option value=""></option>					
						<option value="Yes">Yes</option>
                        <option value="No">No</option>
						<option value="Doesn't matter">Doesn't matter</option>
					</select>
				</div>
				
				<div class="form-group">
					<label>A man should prefer an active or passive rest?</label>
					<input name="question42" type="text" class="form-control rounded">
				</div>
				
				<div class="form-group">
					<label>Describe the man you would like to meet on our website. What is most important for you? *</label>
					<input name="question43" type="text" class="form-control rounded" required="required">
				</div>
				
				<div class="form-group">
					<label>Contact phone number *</label>
					<input name="question44" type="text" class="form-control rounded" required="required">
				</div>
				
				<div class="form-group">
					<label>Email address *</label>
					<input name="question45" type="email" class="form-control rounded" required="required">
				</div>
				
				<div class="form-group">
					<label>Viber/Skype/WhatsApp *</label>
					<input name="question46" type="text" class="form-control rounded" required="required">
				</div>
				
				<div class="form-group">
					<label>Do you have social nets? (Facebook Twitter Google+) *</label>
					<input name="question47" type="text" class="form-control rounded" required="required">
				</div>
				
				<div class="form-group">
					<label>Preferred days and time of communication with you</label>
					<input name="question48" type="text" class="form-control rounded">
				</div>
				
				<div class="form-group">
					<label>URL Video</label>
					<input name="video" type="text" class="form-control rounded">
				</div>

				<div class="form-group">
					<button type="submit" class="btn btn-success" >Создать анкету</button>
				</div>
			</form>
	</div>		
	</div>
</body>
</html>