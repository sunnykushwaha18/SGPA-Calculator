<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&display=swap" rel="stylesheet">
<title>SGPA CALCULATOR</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

#calculator {
	max-width: 600px;
	margin: 50px auto;
	background-color: #fff;
	border-radius: 8px;
	padding: 20px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
	text-align: center;
	color: #333;
}

.subject-block {
	margin-bottom: 20px;
	border-bottom: 1px solid #ccc;
	padding-bottom: 20px;
}

.subject-block h2 {
	color: #333;
	margin-bottom: 10px;
}

.subject {
	margin-bottom: 20px;
}

.input-block {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 10px;
}

.input-block label {
	width: 45%;
	font-weight: bold;
}

.input-block input {
	width: 45%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

button {
	background-color: #4caf50;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
	width: 100%;
}

button:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<div id="calculator">
		<h1>SGPA CALCULATOR</h1>
		<form action="sgpacalculator" method="post">
			<!-- Block 1 -->
			<div class="subject-block">
				<h2>Subjects of credit 1</h2>
				<div class="subject">
					<!-- Subject 1 Input Structure -->
					<div class="input-block">
						<label for="subject1-credit">Subject 1 Credit:</label> <input
							type="number" id="subject1-credit" name="subject11-credit" min="0"
							required>
					</div>
					<div class="input-block">
						<label for="subject1-marks">Subject 1 Marks:</label> <input
							type="number" id="subject1-marks" name="subject11-marks" min="0"
							max="100" required>
					</div>
					<div class="input-block">
						<label for="subject1-credit">Subject 2 Credit:</label> <input
							type="number" id="subject1-credit" name="subject12-credit" min="0"
							required>
					</div>
					<div class="input-block">
						<label for="subject1-marks">Subject 2 Marks:</label> <input
							type="number" id="subject1-marks" name="subject12-marks" min="0"
							max="100" required>
					</div>
					<div class="input-block">
						<label for="subject1-credit">Subject 3 Credit:</label> <input
							type="number" id="subject1-credit" name="subject13-credit" min="0"
							required>
					</div>
					<div class="input-block">
						<label for="subject3-marks">Subject 3 Marks:</label> <input
							type="number" id="subject1-marks" name="subject13-marks" min="0"
							max="100" required>
					</div>
					<div class="input-block">
						<label for="subject1-credit">Subject 4 Credit:</label> <input
							type="number" id="subject1-credit" name="subject14-credit" min="0"
							required>
					</div>
					<div class="input-block">
						<label for="subject1-marks">Subject 4 Marks:</label> <input
							type="number" id="subject1-marks" name="subject14-marks" min="0"
							max="100" required>
					</div>

					<!-- Repeat the above structure for subjects 2 to 4 with a gap -->
					<div class="input-block"></div>

				</div>
			</div>

			<!-- Repeat the above structure for Blocks 2, 3, and 4 with a line between each block -->

			<div class="subject-block">
				<h2>Subjects of credit 2</h2>
				<div class="subject">
					<!-- Subject 1 Input Structure -->
					<div class="input-block">
						<label for="subject2-credit">Subject 1 Credit:</label> <input
							type="number" id="subject2-credit" name="subject21-credit" min="0"
							required>
					</div>
					<div class="input-block">
						<label for="subject2-marks">Subject 1 Marks:</label> <input
							type="number" id="subject2-marks" name="subject21-marks" min="0"
							max="100" required>
					</div>
					<div class="input-block">
						<label for="subject2-credit">Subject 2 Credit:</label> <input
							type="number" id="subject2-credit" name="subject22-credit" min="0"
							required>
					</div>
					<div class="input-block">
						<label for="subject2-marks">Subject 2 Marks:</label> <input
							type="number" id="subject2-marks" name="subject22-marks" min="0"
							max="100" required>
					</div>
					<div class="input-block">
						<label for="subject2-credit">Subject 3 Credit:</label> <input
							type="number" id="subject2-credit" name="subject23-credit" min="0"
							required>
					</div>
					<div class="input-block">
						<label for="subject2-marks">Subject 3 Marks:</label> <input
							type="number" id="subject2-marks" name="subject23-marks" min="0"
							max="100" required>
					</div>
					<div class="input-block">
						<label for="subject2-credit">Subject 4 Credit:</label> <input
							type="number" id="subject2-credit" name="subject24-credit" min="0"
							required>
					</div>
					<div class="input-block">
						<label for="subject2-marks">Subject 4 Marks:</label> <input
							type="number" id="subject2-marks" name="subject24-marks" min="0"
							max="100" required>
					</div>

					<!-- Repeat the above structure for subjects 2 to 4 with a gap -->
					<div class="input-block"></div>

				</div>
			</div>

			<div class="subject-block">
				<h2>Subjects of credit 3</h2>
				<div class="subject">
					<!-- Subject 1 Input Structure -->
					<div class="input-block">
						<label for="subject3-credit">Subject 1 Credit:</label> <input
							type="number" id="subject3-credit" name="subject31-credit" min="0"
							required>
					</div>
					<div class="input-block">
						<label for="subject3-marks">Subject 1 Marks:</label> <input
							type="number" id="subject3-marks" name="subject31-marks" min="0"
							max="100" required>
					</div>
					<div class="input-block">
						<label for="subject3-credit">Subject 2 Credit:</label> <input
							type="number" id="subject3-credit" name="subject32-credit" min="0"
							required>
					</div>
					<div class="input-block">
						<label for="subject3-marks">Subject 2 Marks:</label> <input
							type="number" id="subject3-marks" name="subject32-marks" min="0"
							max="100" required>
					</div>
					<div class="input-block">
						<label for="subject3-credit">Subject 3 Credit:</label> <input
							type="number" id="subject3-credit" name="subject33-credit" min="0"
							required>
					</div>
					<div class="input-block">
						<label for="subject3-marks">Subject 3 Marks:</label> <input
							type="number" id="subject3-marks" name="subject33-marks" min="0"
							max="100" required>
					</div>
					<div class="input-block">
						<label for="subject3-credit">Subject 4 Credit:</label> <input
							type="number" id="subject3-credit" name="subject34-credit" min="0"
							required>
					</div>
					<div class="input-block">
						<label for="subject3-marks">Subject 4 Marks:</label> <input
							type="number" id="subject3-marks" name="subject34-marks" min="0"
							max="100" required>
					</div>

					<!-- Repeat the above structure for subjects 2 to 4 with a gap -->
					<div class="input-block"></div>

				</div>
			</div>

			<div class="subject-block">
				<h2>Subjects of credit 4</h2>
				<div class="subject">
					<!-- Subject 1 Input Structure -->
					<div class="input-block">
						<label for="subject4-credit">Subject 1 Credit:</label> <input
							type="number" id="subject4-credit" name="subject41-credit" min="0"
							required>
					</div>
					<div class="input-block">
						<label for="subject4-marks">Subject 1 Marks:</label> <input
							type="number" id="subject4-marks" name="subject41-marks" min="0"
							max="100" required>
					</div>
					<div class="input-block">
						<label for="subject4-credit">Subject 2 Credit:</label> <input
							type="number" id="subject4-credit" name="subject42-credit" min="0"
							required>
					</div>
					<div class="input-block">
						<label for="subject4-marks">Subject 2 Marks:</label> <input
							type="number" id="subject4-marks" name="subject42-marks" min="0"
							max="100" required>
					</div>
					<div class="input-block">
						<label for="subject4-credit">Subject 3 Credit:</label> <input
							type="number" id="subject4-credit" name="subject43-credit" min="0"
							required>
					</div>
					<div class="input-block">
						<label for="subject4-marks">Subject 3 Marks:</label> <input
							type="number" id="subject4-marks" name="subject43-marks" min="0"
							max="100" required>
					</div>
					<div class="input-block">
						<label for="subject4-credit">Subject 4 Credit:</label> <input
							type="number" id="subject4-credit" name="subject44-credit" min="0"
							required>
					</div>
					<div class="input-block">
						<label for="subject4-marks">Subject 4 Marks:</label> <input
							type="number" id="subject4-marks" name="subject44-marks" min="0"
							max="100" required>
					</div>
				</div>
			</div>

			<button type="submit">Calculate SGPA</button>
		</form>
	</div>
	</div> <footer class="down">
        <div class="content"  size="50%">
          <div class="left box">
            <div class="upper">
              <div class="topic">About us</div>
              <p>"Welcome to my WEBSITE! Thanks For visiting..!    I [Sunny Kumar Kushwaha] am a passionate and dedicated , a creative soul driven by the world of design. As you explore my work, you'll discover my unwavering enthusiasm for turning ideas into captivating visuals that leave a lasting impact.</p>
            </div>
            <div class="lower">
              <div class="topic">Contact us</div>
              <div class="phone">
                <a href="tel:6202698282"><i class="fas fa-phone-volume"></i>+91 6202698282</a>
              </div>
              <div class="email">
                <a href="mailto: sunnybabu1962@gmail.com"><i class="fas fa-envelope"></i>sunnykushwaha189@gmail.com</a>
              </div>
            </div>
          </div>
          <div class="middle box">
            <div class="topic">Something Behind Darkness<br>[QUOTES]</div>
            <div><a href="#">You Can't Be</a></div>
            <div><a href="#">Strong All The Time..!!!</a></div>
            <div><a href="#">Sometime You</a></div>
            <div><a href="#">Just Need To</a></div>
            <div><a href="#">Be Alone And Let's</a></div>
            <div><a href="#">Your Tear Out...</a></div>
          </div>
          <div class="right box">
            <div class="topic">Subscribe us</div>
            <form action="#">
              <input type="text" placeholder="Enter email address">
              <input type="submit" name="" value="Send">
              <div class="media-icons">
                <a href="https://www.facebook.com/profile.php?id=100026162026433"><i  class="fab fa-facebook-f"></i></a>
                <a href="https://www.instagram.com/____sunny_kushwaha_18/"><i class="fab fa-instagram"></i></a>
                <a href="http://twitter.com/SunnyKumarKus13"><i class="fab fa-twitter"></i></a>
                <a href="https://www.youtube.com/@054_sunny_kumar_kushwaha4/"><i class="fab fa-youtube"></i></a>
                <a href="http://linkedin.com/in/sunnykumar18"><i class="fab fa-linkedin-in"></i></a>
              </div>
            </form>
          </div>
        </div>
        <div class="bottom">
            <p><h5 class="shine" color="blue">Sunny_Kushwaha_&#129505</h5></p>
          <p>Copyright © 2020 <a href="#">__SKK__</a> All rights reserved</p>
        </div>
      </footer>
      
      
      
      
      <style>
 @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
  text-decoration: none;
}
footer{
  width: 100%;
  border-top-style: dotted;
  border-top: thick green;
  bottom: -256px;
  left: 0;
  background-color: var(--color-primary);
    /* font-family: "Poppins", sans-serif; */
    font-size: 1.1rem;
    color: var(--color-white);
    transition: all 0.4s ease-in-out;
  
}
footer .content{
  max-width: 1350px;
  margin: auto;
  padding: 20px;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}
footer .content p{
  /* color: #fff; */
  background-color: var(--color-primary);
  /* font-family: "Poppins", sans-serif; */
  font-size: 1.1rem;
  color: var(--color-white);
  transition: all 0.4s ease-in-out;
}
footer .content .box{
  width: 33%;
  transition: all 0.4s ease;
}
/* i{
   background-color: #4caf50;
} */
footer .content .topic{
  font-size: 22px;
  font-weight: 600;
  /* color: #fff; */
  background-color: var(--color-primary);
    /* font-family: "Poppins", sans-serif; */
    /* font-size: 1.1rem; */
    color: var(--color-white);
    transition: all 0.4s ease-in-out;
  margin-bottom: 16px;
}
footer .content p{
  text-align: justify;
}
footer .content .lower .topic{
  margin: 24px 0 5px 0;
}
footer .content .lower i{
  padding-right: 16px;
}
footer .content .middle{
  padding-left: 80px;
}
footer .content .middle a{
  line-height: 32px;
}
footer .content .right input[type="text"]{
  height: 45px;
  width: 100%;
  outline: none;
  color: #d9d9d9;
  background: #000;
  border-radius: 5px;
  padding-left: 10px;
  font-size: 17px;
  border: 2px solid #222222;
}
footer .content .right input[type="submit"]{
  height: 42px;
  width: 100%;
  font-size: 18px;
  color: #d9d9d9;
  background: #eb2f06;
  outline: none;
  border-radius: 5px;
  letter-spacing: 1px;
  cursor: pointer;
  margin-top: 12px;
  border: 2px solid #eb2f06;
  transition: all 0.3s ease-in-out;
}
.content .right input[type="submit"]:hover{
  background: none;
  color:  #eb2f06;
}
footer .content .media-icons a{
  font-size: 16px;
  height: 45px;
  width: 45px;
  display: inline-block;
  text-align: center;
  line-height: 43px;
  border-radius: 5px;
  border: 2px solid #222222;
  margin: 30px 5px 0 0;
  transition: all 0.3s ease;
}
.content .media-icons a:hover{
  border-color: #eb2f06;
}
footer .bottom{
  width: 100%;
  text-align: right;
  color: #d9d9d9;
  padding: 0 40px 5px 0;
}
footer .bottom a{
  color: #eb2f06;
}
footer a{
  transition: all 0.3s ease;
}
footer a:hover{
  color: #eb2f06;
}
@media (max-width:1100px) {
  footer .content .middle{
    padding-left: 50px;
  }
}
@media (max-width:950px){
  footer .content .box{
    width: 50%;
  }
  .content .right{
    margin-top: 40px;
  }
}
@media (max-width:560px){
  footer{
    position: relative;
  }
  footer .content .box{
    width: 100%;
    margin-top: 30px;
  }
  footer .content .middle{
    padding-left: 0;
  }
}


      </style>
      

	<script>
		function calculateSGPA() {
			// Add your calculation logic here
			alert("SGPA Calculation Placeholder");
		}
	</script>
</body>
</html>
