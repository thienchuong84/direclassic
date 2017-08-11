<?php require 'partials/head.php'; ?>

<?php require('partials/nav.php'); ?>

<h1>Submit Your Name </h1>

<?php foreach ($users as $user): ;?>
	<li><?= $user->name; ?></li>
<?php endforeach; ?>

<form method="POST" action="/names">
	<input type="text" name="name">
	<button>Submit</button>
</form>

<?php require 'partials/footer.php'; ?>