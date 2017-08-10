<?php require 'partials/head.php'; ?>

<?php require('partials/nav.php'); ?>

	direclassic.com


	<ul>
		<?php foreach($tasks as $task): ?>
			<li>
				<?php if($task->completed) : ?>
					<strike><?= $task->description; ?></strike>
				<?php else: ?>
					<?= $task->description; ?>
				<?php endif; ?>
			</li>
		<?php endforeach; ?>
	</ul>

<?php require 'partials/footer.php'; ?>