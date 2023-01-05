<?php include "./templates/top.php"; ?>

<?php include "./templates/navbar.php"; ?>

<div class="container">
	<div class="row justify-content-center" style="margin:100px 0;">
		<div class="col-md-4">
			<h4 class="text-center">Autentificare administrator</h4>
			<p class="message"></p>
			<form id="admin-login-form">
			  <div class="form-group">
			    <label for="email">Adresa de email</label>
			    <input type="email" class="form-control" name="email" id="email"  placeholder="Introduceti adresa de email">
			    
			  </div>
			  <div class="form-group">
			    <label for="password">Parola</label>
			    <input type="password" class="form-control" name="password" id="password" placeholder="Introduceti parola">
			  </div>
			  <input type="hidden" name="admin_login" value="1">
			  <button type="button" class="btn btn-success login-btn">Conectare</button>
			</form>
		</div>
	</div>
</div>





<?php include "./templates/footer.php"; ?>

<script type="text/javascript" src="./js/main.js"></script>
