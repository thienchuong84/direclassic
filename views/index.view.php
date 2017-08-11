<?php require 'partials/head.php'; ?>

<?php require('partials/nav.php'); ?>

<h1>Aubmit Your Name </h1>

<form method="POST" action="/names">
	<input type="text" name="name">
	<button>Submit</button>
</form>

<?php require 'partials/footer.php'; ?>