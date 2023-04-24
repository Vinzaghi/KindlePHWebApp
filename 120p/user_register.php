<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

if(isset($_POST['submit'])){

   $name = $_POST['name'];
   $name = filter_var($name, FILTER_SANITIZE_STRING);
   $email = $_POST['email'];
   $email = filter_var($email, FILTER_SANITIZE_STRING);
   $pass = sha1($_POST['pass']);
   $pass = filter_var($pass, FILTER_SANITIZE_STRING);
   $cpass = sha1($_POST['cpass']);
   $cpass = filter_var($cpass, FILTER_SANITIZE_STRING);
   $adl1 = $_POST['adl1'];
   $adl1 = filter_var($adl1, FILTER_SANITIZE_STRING);
   $adl2 = $_POST['adl2'];
   $adl2 = filter_var($adl2, FILTER_SANITIZE_STRING);
   $city = $_POST['city'];
   $city = filter_var($city, FILTER_SANITIZE_STRING);
   $state = $_POST['state'];
   $state = filter_var($state, FILTER_SANITIZE_STRING);
   $country = $_POST['country'];
   $country = filter_var($country, FILTER_SANITIZE_STRING);


   $select_user = $conn->prepare("SELECT * FROM `users` WHERE email = ?");
   $select_user->execute([$email,]);
   $row = $select_user->fetch(PDO::FETCH_ASSOC);

   if($select_user->rowCount() > 0){
      $message[] = 'email already exists!';
   }else{
      if($pass != $cpass){
         $message[] = 'confirm password not matched!';
      }else{
         $insert_user = $conn->prepare("INSERT INTO `users`(name, email, password) VALUES(?,?,?)");
         $insert_user->execute([$name, $email, $cpass]);
         $insert_add = $conn->prepare("INSERT INTO `address`(adl1, adl2, city, state, country) VALUES(?,?,?,?,?)");
         $insert_add->execute([$adl1, $adl2, $city, $state, $country]);
         $message[] = 'registered successfully, login now please!';

         $log_user = $conn->prepare("SELECT * FROM `users` WHERE email = ? AND password = ?");
         $log_user->execute([$email, $cpass]);
         $log = $select_user->fetch(PDO::FETCH_ASSOC);
         $_SESSION['user_id'] = $log['id'];
         header('location:home.php');
      }
   }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>register</title>
   
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'components/user_header.php'; ?>

<section class="form-container">

   <form action="" method="post">
      <h3>register now</h3>
      <input type="text" name="name" required placeholder="enter your username" maxlength="20"  class="box">
      <input type="email" name="email" required placeholder="enter your email" maxlength="50"  class="box" oninput="this.value = this.value.replace(/\s/g, '')">
      <input type="password" name="pass" required placeholder="enter your password" maxlength="20"  class="box" oninput="this.value = this.value.replace(/\s/g, '')">
      <input type="password" name="cpass" required placeholder="confirm your password" maxlength="20"  class="box" oninput="this.value = this.value.replace(/\s/g, '')">
      <input type="text" name="adl1" required placeholder="Flat Number" maxlength="20"  class="box" oninput="this.value = this.value.replace(/\s/g, '')">
      <input type="text" name="adl2" required placeholder="Street Name" maxlength="20"  class="box" oninput="this.value = this.value.replace(/\s/g, '')">
      <input type="text" name="city" required placeholder="City" maxlength="20"  class="box" oninput="this.value = this.value.replace(/\s/g, '')">
      <input type="text" name="state" required placeholder="State" maxlength="20"  class="box" oninput="this.value = this.value.replace(/\s/g, '')">
      <input type="text" name="country" required placeholder="Country" maxlength="20"  class="box" oninput="this.value = this.value.replace(/\s/g, '')">
      
      
      
      
      <input type="submit" value="register now" class="btn" name="submit">
      <p>already have an account?</p>
      <a href="user_login.php" class="option-btn">login now</a>
   </form>

</section>













<?php include 'components/footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>