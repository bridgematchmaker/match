<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<meta name="description" content="Something There">
	<meta name="author" content="">
	<title>BridgeMatchmaker</title>

	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" rel="stylesheet">
	<!-- Main Style -->

	<!--Style Content Page-->

	<!-- Bootstrap -->
	<link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<!-- Font Awesome -->
	<link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<!-- Owl Carousel -->
	<link href="assets/css/owl.carousel.min.css" rel="stylesheet" type="text/css">

    <link href="assets/css/select2.min.css" rel="stylesheet" type="text/css">
    <!--Style Content Page-->
    <link href="assets/css/registration.css" rel="stylesheet" type="text/css">
    <!-- Datepicker -->
    <link href="assets/css/jquery-ui.theme.min.css" rel="stylesheet" type="text/css">
    <link href="assets/css/jquery-ui.structure.min.css" rel="stylesheet" type="text/css">

	<link href="assets/css/style-main.css" rel="stylesheet" type="text/css">
	<link href="assets/css/intlTelInput.css" rel="stylesheet" type="text/css">
	<!-- Favicon -->
	<link rel="icon" href="" type="image/png"/>

</head>

<body class="page">
<?
require "./header.php";
?>

<section class="section-main-content text-spacing-25">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-9 col-xl-7">
<!-- CONTENT (start)-->
                        <div class="member-registration-page">

                            <h2 class="page-title">Fill in your profile</h2>
                            <p class="message-registration">To get the most complete information about you that will help you and your girlfriend to know you better and also your personal matchmaker to find the most appropriate girls for you, please fill in the information in this application.</p>

                            <h3 class="page-title title-registration">Registration</h3>
                            <p class="message-registration">Indicate the truthful and complete information about you. All fields will be checked manually by our employee.</p>

                            <form action="./function/reg.php" method="POST" class="member-register-form" enctype="multipart/form-data">
                                <div class="row">
                                <div class="col-md-6 left">
                                    <div class="form-group">
                                        <label for="first-name">First name<span class="required"> *</span></label>
                                        <input type="text" name="first_name" class="form-control require" id="first-name" value="">
                                    </div>
                                    <div class="form-group">
                                        <label for="last-name">Last name<span class="required"> *</span></label>
                                        <input type="text" name="last_name" class="form-control require" id="last-name" value="">
                                    </div>
                                    <div class="form-group">
                                        <label for="country">Country <span class="required"> *</span></label>
                                        <select name="country" class="form-control require" id="country">
											<option value="1" selected disabled></option>
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
                                        <label for="nationality">Nationality <span class="required"> *</span></label>
                                        <select name="question1" class="form-control require" id="nationality">
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
                                        <label for="religion">Religion</label>
                                        <select name="question2" class="form-control" id="religion">
                                            <option value="1" selected disabled></option>
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
                                        <label for="date-birth">Age(date of birth)<span class="required"> *</span></label>
                                        <input name="birthday" type="text" class="form-control require" id="date-birth">
                                    </div>

                                    <div class="form-group">
                                        <label for="body-type">Body type </label>
                                        <select name="question5" class="form-control" id="body-type">
                                            <option value="1" selected disabled></option>
                                            <option value="Thin">Thin</option>
                                            <option value="Athletic">Athletic</option>
											<option value="Sportive">Sportive</option>
                                            <option value="Overweight">Overweight</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="eye-color">Eye color <span class="required"> *</span></label>
                                        <select name="question6" class="form-control require" id="eye-color">
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
                                        <label for="hair-color">Hair color <span class="required"> *</span></label>
                                        <select name="question7" class="form-control require" id="hair-color">
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
                                        <label for="education">Education</label>
                                        <select name="question8" class="form-control" id="education">
                                            <option value="1" selected disabled></option>
                                            <option value="None">None</option>
                                            <option value="Primary school">Primary school</option>
											<option value="High school">High school</option>
                                            <option value="Collage">Collage</option>
											<option value="University Degree">University Degree</option>
                                        </select>
                                    </div>
									
									<div class="form-group">
                                        <label for="marital-status">Marital status?</label>
                                        <select name="question10" class="form-control" id="marital-status">
                                            <option value="1" selected disabled></option>
                                            <option value="Single">Single</option>
                                            <option value="Divorced">Divorced</option>
											<option value="Window">Window</option>
                                        </select>
                                    </div>
									
									 <div class="form-group">
                                        <label for="body-type"> Weight <span class="required"> *</span></label>
                                        <select name="question4" class="form-control  require" id="weight">
                                            <option value="" selected disabled></option>
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

                                </div>

                                <div class="col-md-6 right">
									
									<div class="form-group">
                                        <label for="height">Height <span class="required"> *</span></label>
                                        <select name="question3" class="form-control require" id="height">
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
                                        <label for="attitude-smoke">Attitude to smoking, alcohol, drugs <span class="required"> *</span></label>
                                        <select name="question9" class="form-control require" id="attitude-smoke">
                                            <option value=""></option>
                                            <option value="Negative">Negative</option>
                                            <option value="Positive">Positive</option>
											<option value="Don't know">Don't know</option>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="orientation">What is your sexual orientation? <span class="required"> *</span></label>
                                        <select name="question11" class="form-control require" id="orientation">
                                            <option value=""></option>
                                            <option value="Heterosexual">Heterosexual</option>
                                            <option value="Homosexual">Homosexual</option>
											<option value="Bisexual">Bisexual</option>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="lonely">How long are you lonely?</label>
										<input name="question12" type="text" class="form-control" id="lonely" value="">
                                    </div>

                                    <div class="form-group">
                                        <label for="profession">Your profession?</label>
										<input name="question13" type="text" class="form-control" id="profession" value="">
                                    </div>

                                    <div class="form-group">
                                        <label for="annual-income">Your annual income</label>
                                        <select name="question14" class="form-control" id="annual-income">
                                            <option value="1" selected disabled></option>
                                            <option value="20.000-35.000$">20.000-35.000$</option>
                                            <option value="40.000-55.000$">40.000-55.000$</option>
											<option value="60.000-75.000$">60.000-75.000$</option>
                                            <option value="75.000-100.000$">75.000-100.000$</option>
											<option value="100.000- more$">100.000- more$</option>
                                            
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="have-children">Do you have children?<span class="required"> *</span></label>
                                        <select name="question15" class="form-control require" id="have-children">
                                            <option value=""></option>
                                            <option value="Yes">Yes</option>
                                            <option value="No">No</option>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="native-language">What is your native language?<span class="required"> *</span></label>
                                        <select name="question16" class="form-control require" id="native-language">
                                            <option value=""></option>
											  <option value="English">English</option> 
											  <option value="Italian">Italian</option>
											  <option value="Danish">Danish</option>
											  <option value="Spanish">Spanish</option>
											  <option value="German">German</option>
											  <option value="French">French</option>
                                              <option value="Afrikanns">Afrikanns</option>
											  <option value="Albanian">Albanian</option>
											  <option value="Arabic">Arabic</option>
											  <option value="Armenian">Armenian</option>
											  <option value="Basque">Basque</option>
											  <option value="Bengali">Bengali</option>
											  <option value="Bulgarian">Bulgarian</option>
											  <option value="Catalan">Catalan</option>
											  <option value="Cambodian">Cambodian</option>
											  <option value="Chinese (Mandarin)">Chinese (Mandarin)</option>
											  <option value="Croation">Croation</option>
											  <option value="Czech">Czech</option>
											  <option value="Estonian">Estonian</option>
											  <option value="Fiji">Fiji</option>
											  <option value="Finnish">Finnish</option>
											  <option value="Georgian">Georgian</option>
											  <option value="Greek">Greek</option>
											  <option value="Gujarati">Gujarati</option>
											  <option value="Hebrew">Hebrew</option>
											  <option value="Hindi">Hindi</option>
											  <option value="Hungarian">Hungarian</option>
											  <option value="Icelandic">Icelandic</option>
											  <option value="Indonesian">Indonesian</option>
											  <option value="Irish">Irish</option>
											  <option value="Japanese">Japanese</option>
											  <option value="Javanese">Javanese</option>
											  <option value="Korean">Korean</option>
											  <option value="Latin">Latin</option>
											  <option value="Latvian">Latvian</option>
											  <option value="Lithuanian">Lithuanian</option>
											  <option value="Macedonian">Macedonian</option>
											  <option value="Malay">Malay</option>
											  <option value="Malayalam">Malayalam</option>
											  <option value="Maltese">Maltese</option>
											  <option value="Maori">Maori</option>
											  <option value="Marathi">Marathi</option>
											  <option value="Mongolian">Mongolian</option>
											  <option value="Nepali">Nepali</option>
											  <option value="Norwegian">Norwegian</option>
											  <option value="Persian">Persian</option>
											  <option value="Polish">Polish</option>
											  <option value="Portuguese">Portuguese</option>
											  <option value="Punjabi">Punjabi</option>
											  <option value="Quechua">Quechua</option>
											  <option value="Romanian">Romanian</option>
											  <option value="Russian">Russian</option>
											  <option value="Samoan">Samoan</option>
											  <option value="Serbian">Serbian</option>
											  <option value="Slovak">Slovak</option>
											  <option value="Slovenian">Slovenian</option>
											  <option value="Swahili">Swahili</option>
											  <option value="Swedish ">Swedish </option>
											  <option value="Tamil">Tamil</option>
											  <option value="Tatar">Tatar</option>
											  <option value="Telugu">Telugu</option>
											  <option value="Thai">Thai</option>
											  <option value="Tibetan">Tibetan</option>
											  <option value="Tonga">Tonga</option>
											  <option value="Turkish">Turkish</option>
											  <option value="Ukranian">Ukranian</option>
											  <option value="Urdu">Urdu</option>
											  <option value="Uzbek">Uzbek</option>
											  <option value="Vietnamese">Vietnamese</option>
											  <option value="Welsh">Welsh</option>
											  <option value="Xhosa">Xhosa</option>
                                        </select>
                                    </div>
									
									<div class="form-group">
                                        <label for="languages">What languages can you speak?</label>
                                        <select class="form-control languages" id="languages"  name="languages_speak_arr[]" multiple="multiple">
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
                                        <label for="hear-about-us">How did you hear about us?</label>
                                        <textarea name="question51" cols="" rows="5" id="hear-about-us">
                                        </textarea>
                                    </div>

                                </div>
                                </div>

                                <div class="row email-pas-tel">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="email">Email<span class="required"> *</span></label>
                                            <input name="email_client" type="email" class="form-control require" id="email" value="">
                                        </div>
                                        <div class="form-group password">
                                            <label for="password">Password<span class="required"> *</span></label>
                                            <input name="password" type="password" class="form-control require" id="password" value="">
                                            <p>Not less then 5 simbols</p>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="phone">Phone<span class="required"> *</span></label>
                                            <input name="telefon" type="tel" class="form-control require" id="phone" value="">
                                        </div>
                                    </div>
                                </div>


                                    <div class="row photo-avarat">
                                    <div class="col-md-5">
                                        <h4>Photo avatar</h4>
                                        <input type="file" name="file">
                                    </div>
                                    <div class="col-md-7 d-flex align-items-end">
                                            <p class="message-upload">Good quality, minimum of details in the background, don't attach photo with many people on it.</p>
                                        </div>
                                    </div>
                                <div class="col-md-12">
                                <div class="form-check license-agreement">
                                    <input type="checkbox" id="license-agreement" class="form-check-input" name="" value="">
                                    <label class="form-check-label" for="license-agreement">By clicking "Register" you agree with the Terms and Conditions and License agreement.</label>
									
                                </div>	
                                </div>
								
                                <div class="col-md-12 save-registration text-center mt-5">
									<div class="g-recaptcha" style="display: inline-block;" data-sitekey="6LfSrWQUAAAAAO-BX1X76vX_LXfgxBsKpoDIyP2Y"></div><br><br>
									<input type="submit" value="Registration">
									<div class="danger-alert mt-3">*You have to fill in all required fields!</div>
                                </div>

                            </form>

                        </div>
<!-- CONTENT (end)-->
			</div>
		</div>
	</div>
</section>

<? require "footer.php";?>

<!-- Site Scripts (start)-->
<script src="assets/js/core.min.js"></script>
<script src="assets/js/custom.js"></script>
<script src="assets/js/jquery.min.js"></script>

<script src="assets/js/registration.js"></script>
<script src="assets/js/select2.min.js"></script>
<script src="assets/js/jquery-ui.min.js"></script>
<script src="assets/js/intlTelInput.js"></script>
<script src='https://www.google.com/recaptcha/api.js'></script>

<script>
		$("#phone").intlTelInput();
</script>
<!-- Site Scripts (end)-->

</body>

</html>